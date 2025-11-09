"""
SMT-LIB Logic Detection Module

This module provides functionality to determine the smallest SMT-LIB logic
that a given formula belongs to by analyzing its AST structure.
"""

import z3
from typing import Set, Dict, Optional
from pathlib import Path


class LogicFeatures:
    """Container for tracking formula features during AST traversal."""
    
    def __init__(self):
        # Quantifier tracking
        self.has_quantifiers = False
        
        # Sort tracking
        self.uses_int = False
        self.uses_real = False
        self.uses_bv = False
        self.uses_array = False
        self.uses_uninterpreted_sorts = False
        
        # Function tracking
        self.uses_uf = False  # Uninterpreted functions
        
        # Arithmetic properties
        self.is_nonlinear = False
        self.is_difference_logic = True  # Assume DL until proven otherwise
        self.has_arithmetic = False
        
        # Array properties
        self.array_index_sort = None
        self.array_value_sort = None
        
    def __repr__(self):
        return (f"LogicFeatures(quantifiers={self.has_quantifiers}, "
                f"int={self.uses_int}, real={self.uses_real}, "
                f"bv={self.uses_bv}, array={self.uses_array}, "
                f"uf={self.uses_uf}, nonlinear={self.is_nonlinear}, "
                f"diff_logic={self.is_difference_logic})")


class SMTLogicDetector:
    """Detects the SMT-LIB logic of a formula through AST traversal."""
    
    def __init__(self):
        self.features = LogicFeatures()
        self.visited = set()
        self.declared_functions = {}
        
    def detect_from_file(self, formula_path: str) -> str:
        """
        Detect logic from a .smt2 file.
        
        Args:
            formula_path: Path to the .smt2 file
            
        Returns:
            String representing the SMT-LIB logic (e.g., "QF_LIA")
        """
        # Create a solver and parse the SMT2 file
        solver = z3.Solver()
        # Parse and load the file into the solver
        formulas = z3.parse_smt2_file(formula_path, sorts={}, decls={}, ctx=solver.ctx)
        
        # Traverse all formulas (assertions)
        for formula in formulas:
            self._traverse(formula)
        
        # Also traverse the solver's assertions to catch all symbols
        for assertion in solver.assertions():
            self._traverse(assertion)
            
        # Check declarations by reading the file directly
        self._analyze_file_declarations(formula_path)
            
        return self._determine_logic()
    
    def _analyze_file_declarations(self, formula_path: str):
        """
        Analyze declarations in an SMT2 file to detect sorts and functions.
        This helps when the file has declarations but no assertions.
        """
        try:
            with open(formula_path, 'r') as f:
                content = f.read()
                
            # Check for array declarations
            if '(Array' in content:
                self.features.uses_array = True
                # Try to determine array element types
                if 'Int' in content:
                    self.features.uses_int = True
                if 'Real' in content:
                    self.features.uses_real = True
                if 'BitVec' in content or '_ BitVec' in content:
                    self.features.uses_bv = True
                    
            # Check for declare-sort (uninterpreted sorts)
            if '(declare-sort' in content:
                self.features.uses_uninterpreted_sorts = True
                self.features.uses_uf = True
                
            # Check for declare-fun with non-zero arity (uninterpreted functions)
            import re
            # Pattern: (declare-fun name (arg1 arg2 ...) return)
            # If args is not empty, it's a function
            fun_pattern = r'\(declare-fun\s+\S+\s+\(([^)]*)\)'
            for match in re.finditer(fun_pattern, content):
                args = match.group(1).strip()
                if args:  # Non-empty argument list means it's a function, not a constant
                    self.features.uses_uf = True
                    
            # Check for quantifiers
            if '(forall' in content or '(exists' in content:
                self.features.has_quantifiers = True
                
            # Check for bitvector ops
            if any(op in content for op in ['bvadd', 'bvsub', 'bvmul', 'concat', 'extract']):
                self.features.uses_bv = True
                
        except Exception as e:
            # If file analysis fails, continue with what we have
            pass
    
    def detect_from_formula(self, formula) -> str:
        """
        Detect logic from a Z3 formula object.
        
        Args:
            formula: Z3 expression or list of expressions
            
        Returns:
            String representing the SMT-LIB logic
        """
        if isinstance(formula, list):
            for f in formula:
                self._traverse(f)
        else:
            self._traverse(formula)
            
        return self._determine_logic()
    
    def _traverse(self, expr):
        """
        Recursively traverse the AST to collect features.
        
        Args:
            expr: Z3 expression to traverse
        """
        # Avoid revisiting nodes
        expr_id = id(expr)
        if expr_id in self.visited:
            return
        self.visited.add(expr_id)
        
        # Check if this is a quantifier
        if z3.is_quantifier(expr):
            self.features.has_quantifiers = True
            # Traverse the body
            self._traverse(expr.body())
            return
        
        # Check if this is an expression (not a sort)
        if not z3.is_expr(expr):
            return
            
        # Detect sort (type) of the expression
        self._detect_sort(expr)
        
        # Detect operator and update features
        if z3.is_app(expr):
            self._analyze_application(expr)
        
        # Recursively traverse children
        for child in expr.children():
            self._traverse(child)
    
    def _detect_sort(self, expr):
        """Detect and record the sort (type) of an expression."""
        try:
            sort = expr.sort()
            
            if z3.is_int(expr):
                self.features.uses_int = True
            elif z3.is_real(expr):
                self.features.uses_real = True
            elif z3.is_bv(expr):
                self.features.uses_bv = True
            elif z3.is_array(expr):
                self.features.uses_array = True
                # Track array index and value sorts
                if self.features.array_index_sort is None:
                    self.features.array_index_sort = sort.domain()
                    self.features.array_value_sort = sort.range()
            elif not z3.is_bool(expr):
                # Check if it's an uninterpreted sort
                sort_kind = sort.kind()
                if sort_kind == z3.Z3_UNINTERPRETED_SORT:
                    self.features.uses_uninterpreted_sorts = True
                    self.features.uses_uf = True
        except:
            pass
    
    def _analyze_application(self, expr):
        """Analyze a function application to detect operators and properties."""
        decl = expr.decl()
        kind = decl.kind()
        num_args = expr.num_args()
        
        # Check for quantifiers (though these should be caught earlier)
        # Note: Z3_OP_FORALL and Z3_OP_EXISTS might not exist as constants
        # Quantifiers are handled by is_quantifier check above
        
        # Check for uninterpreted functions
        # A function is uninterpreted if:
        # 1. It has kind Z3_OP_UNINTERPRETED
        # 2. AND it has arguments (arity > 0)
        # Simple constants like Int('x') have arity 0 and should not be treated as UF
        if kind == z3.Z3_OP_UNINTERPRETED and num_args > 0:
            self.features.uses_uf = True
            # Store function info
            func_name = decl.name()
            if func_name not in self.declared_functions:
                self.declared_functions[func_name] = decl
            return
        
        # Check for array operations
        if kind in (z3.Z3_OP_SELECT, z3.Z3_OP_STORE):
            self.features.uses_array = True
            return
        
        # Analyze arithmetic operations
        self._analyze_arithmetic(expr, kind, num_args)
    
    def _analyze_arithmetic(self, expr, kind, num_args):
        """Analyze arithmetic operations to detect linearity and difference logic."""
        
        # Arithmetic operators
        arith_ops = {
            z3.Z3_OP_ADD, z3.Z3_OP_SUB, z3.Z3_OP_UMINUS,
            z3.Z3_OP_MUL, z3.Z3_OP_DIV, z3.Z3_OP_IDIV, z3.Z3_OP_MOD, z3.Z3_OP_REM,
            z3.Z3_OP_LE, z3.Z3_OP_GE, z3.Z3_OP_LT, z3.Z3_OP_GT,
            z3.Z3_OP_TO_REAL, z3.Z3_OP_TO_INT, z3.Z3_OP_IS_INT
        }
        
        if kind not in arith_ops:
            return
            
        self.features.has_arithmetic = True
        
        # Check for non-linear operations
        if kind == z3.Z3_OP_MUL:
            # Check if we're multiplying two non-constant variables
            children = expr.children()
            non_const_vars = [c for c in children if not z3.is_int_value(c) and not z3.is_rational_value(c)]
            if len(non_const_vars) >= 2:
                self.features.is_nonlinear = True
                self.features.is_difference_logic = False
        
        # Division and modulo are non-linear (unless by constant, but we'll be conservative)
        if kind in (z3.Z3_OP_DIV, z3.Z3_OP_IDIV, z3.Z3_OP_MOD, z3.Z3_OP_REM):
            # Check if divisor is constant
            if num_args >= 2:
                divisor = expr.arg(1)
                if not (z3.is_int_value(divisor) or z3.is_rational_value(divisor)):
                    self.features.is_nonlinear = True
            self.features.is_difference_logic = False
        
        # Check for difference logic pattern: x - y < c or x - y <= c
        # DL requires all arithmetic to be in this form
        if kind in (z3.Z3_OP_LE, z3.Z3_OP_LT, z3.Z3_OP_GE, z3.Z3_OP_GT):
            if not self._is_difference_logic_constraint(expr):
                self.features.is_difference_logic = False
        elif kind not in (z3.Z3_OP_SUB, z3.Z3_OP_UMINUS):
            # Any arithmetic operation other than subtraction breaks DL
            if kind in arith_ops:
                self.features.is_difference_logic = False
    
    def _is_difference_logic_constraint(self, expr) -> bool:
        """
        Check if an inequality is in difference logic form: x - y < c
        
        Args:
            expr: Z3 inequality expression
            
        Returns:
            True if the constraint is in DL form
        """
        if expr.num_args() != 2:
            return False
        
        lhs = expr.arg(0)
        rhs = expr.arg(1)
        
        # Pattern 1: (x - y) < c or c < (x - y)
        if self._is_difference(lhs) and self._is_constant(rhs):
            return True
        if self._is_constant(lhs) and self._is_difference(rhs):
            return True
        
        # Pattern 2: x < y (equivalent to x - y < 0)
        if self._is_variable(lhs) and self._is_variable(rhs):
            return True
        
        # Pattern 3: x < c (equivalent to x - 0 < c)
        if self._is_variable(lhs) and self._is_constant(rhs):
            return True
        if self._is_constant(lhs) and self._is_variable(rhs):
            return True
        
        return False
    
    def _is_difference(self, expr) -> bool:
        """Check if expression is a difference of two variables: x - y"""
        if not z3.is_app(expr):
            return False
        if expr.decl().kind() != z3.Z3_OP_SUB:
            return False
        if expr.num_args() != 2:
            return False
        return self._is_variable(expr.arg(0)) and self._is_variable(expr.arg(1))
    
    def _is_variable(self, expr) -> bool:
        """Check if expression is a variable (not a constant, not a complex expression)"""
        if z3.is_int_value(expr) or z3.is_rational_value(expr):
            return False
        if not z3.is_const(expr):
            return False
        return True
    
    def _is_constant(self, expr) -> bool:
        """Check if expression is a constant value"""
        return z3.is_int_value(expr) or z3.is_rational_value(expr)
    
    def _determine_logic(self) -> str:
        """
        Map detected features to the appropriate SMT-LIB logic string.
        
        Returns:
            String representing the smallest SMT-LIB logic
        """
        f = self.features
        
        # Determine quantifier prefix
        qf_prefix = "" if f.has_quantifiers else "QF_"
        
        # Special case: Pure boolean or uninterpreted functions only
        if not (f.uses_int or f.uses_real or f.uses_bv or f.uses_array):
            if f.uses_uf:
                return f"{qf_prefix}UF"
            return f"{qf_prefix}UF"  # Default to UF for pure logic
        
        # Bitvector logics
        if f.uses_bv:
            if f.uses_array:
                if f.uses_uf:
                    return f"{qf_prefix}AUFBV"
                return f"{qf_prefix}ABV"
            if f.uses_uf:
                return f"{qf_prefix}UFBV"
            return f"{qf_prefix}BV"
        
        # Array logics (without bitvectors)
        if f.uses_array:
            # Check array index/value sorts
            has_int_array = False
            has_real_array = False
            
            if f.array_index_sort and f.array_value_sort:
                if z3.is_int(f.array_value_sort) or str(f.array_value_sort) == "Int":
                    has_int_array = True
                if z3.is_real(f.array_value_sort) or str(f.array_value_sort) == "Real":
                    has_real_array = True
            
            # Extensionality only
            if not f.has_arithmetic and not f.uses_uf:
                return f"{qf_prefix}AX"
            
            # Arrays with arithmetic
            if f.uses_uf:
                if has_real_array and f.is_nonlinear:
                    return "AUFNIRA" if f.has_quantifiers else f"{qf_prefix}AUFLIA"
                if has_real_array or f.uses_real:
                    return "AUFLIRA" if f.has_quantifiers else f"{qf_prefix}AUFLIA"
                if has_int_array or f.uses_int:
                    return "AUFLIA" if f.has_quantifiers else f"{qf_prefix}AUFLIA"
            
            return f"{qf_prefix}AX"
        
        # Arithmetic logics (no bitvectors, no arrays)
        if f.uses_int or f.uses_real:
            # Determine arithmetic type
            mixed_arith = f.uses_int and f.uses_real
            int_only = f.uses_int and not f.uses_real
            real_only = f.uses_real and not f.uses_int
            
            # Determine linearity
            if f.is_difference_logic and not f.is_nonlinear:
                # Difference Logic
                if f.uses_uf:
                    if int_only:
                        return f"{qf_prefix}UFIDL"
                    # No standard logic for UF + RDL, fall through to LRA
                
                if int_only:
                    return f"{qf_prefix}IDL"
                if real_only:
                    return f"{qf_prefix}RDL"
            
            # Linear arithmetic
            if not f.is_nonlinear:
                if f.uses_uf:
                    if int_only:
                        return "UFLIA" if f.has_quantifiers else f"{qf_prefix}UFLIA"
                    if real_only:
                        return "UFLRA" if f.has_quantifiers else f"{qf_prefix}UFLRA"
                    if mixed_arith:
                        return "UFLRA" if f.has_quantifiers else f"{qf_prefix}UFLRA"
                
                if int_only:
                    return "LIA" if f.has_quantifiers else f"{qf_prefix}LIA"
                if real_only:
                    return "LRA" if f.has_quantifiers else f"{qf_prefix}LRA"
                if mixed_arith:
                    return "LIRA" if f.has_quantifiers else f"{qf_prefix}LIRA"
            
            # Non-linear arithmetic
            else:
                if f.uses_uf:
                    if int_only:
                        return "UFNIA" if f.has_quantifiers else f"{qf_prefix}UFNIA"
                    if real_only:
                        return "UFNRA" if f.has_quantifiers else f"{qf_prefix}UFNRA"
                    if mixed_arith:
                        return "UFNRA" if f.has_quantifiers else f"{qf_prefix}UFNRA"
                
                if int_only:
                    return "NIA" if f.has_quantifiers else f"{qf_prefix}NIA"
                if real_only:
                    return "NRA" if f.has_quantifiers else f"{qf_prefix}NRA"
                if mixed_arith:
                    return "NIRA" if f.has_quantifiers else f"{qf_prefix}NIRA"
        
        # Default fallback
        return f"{qf_prefix}UF"


def get_smt_logic(formula) -> str:
    """
    Determine the smallest SMT-LIB logic for a given formula.
    
    This function analyzes a formula (either a file path or Z3 expression)
    to determine which SMT-LIB logic it belongs to. It performs AST traversal
    to detect quantifiers, sorts, operators, and arithmetic properties.
    
    Args:
        formula: Either a string path to a .smt2 file, or a Z3 expression/list of expressions
        
    Returns:
        String representing the SMT-LIB logic (e.g., "QF_LIA", "AUFLIA", "QF_IDL")
        
    Examples:
        >>> # From file
        >>> logic = get_smt_logic("path/to/formula.smt2")
        >>> print(logic)  # e.g., "QF_LIA"
        
        >>> # From Z3 expression
        >>> x = Int('x')
        >>> y = Int('y')
        >>> formula = And(x > 0, x < y)
        >>> logic = get_smt_logic(formula)
        >>> print(logic)  # "QF_IDL"
    """
    detector = SMTLogicDetector()
    
    if isinstance(formula, (str, Path)):
        # File path provided
        return detector.detect_from_file(str(formula))
    else:
        # Z3 expression provided
        return detector.detect_from_formula(formula)


# Convenience function for testing
def test_logic_detection():
    """Test the logic detection with various formula types."""
    test_cases = [
        # QF_IDL: Difference logic
        (lambda: z3.And(z3.Int('x') - z3.Int('y') < 5, z3.Int('y') - z3.Int('z') <= 3), "QF_IDL"),
        
        # QF_LIA: Linear integer arithmetic
        (lambda: z3.And(2 * z3.Int('x') + 3 * z3.Int('y') < 10), "QF_LIA"),
        
        # QF_NIA: Non-linear integer arithmetic
        (lambda: z3.Int('x') * z3.Int('y') > 5, "QF_NIA"),
        
        # QF_LRA: Linear real arithmetic
        (lambda: 2.5 * z3.Real('x') + z3.Real('y') < 10.0, "QF_LRA"),
        
        # QF_BV: Bitvectors
        (lambda: z3.BitVec('x', 32) + z3.BitVec('y', 32) == z3.BitVec('z', 32), "QF_BV"),
        
        # QF_UFLIA: Linear integer arithmetic with UF
        (lambda: z3.Function('f', z3.IntSort(), z3.IntSort())(z3.Int('x')) > z3.Int('y'), "QF_UFLIA"),
        
        # LIA: Linear integer arithmetic with quantifiers
        (lambda: z3.ForAll([z3.Int('x')], z3.Int('x') + 1 > z3.Int('x')), "LIA"),
    ]
    
    print("Testing logic detection:")
    print("-" * 50)
    for formula_fn, expected_logic in test_cases:
        try:
            formula = formula_fn()
            detected = get_smt_logic(formula)
            status = "✓" if detected == expected_logic else "✗"
            print(f"{status} Expected: {expected_logic:15} Got: {detected:15}")
            if detected != expected_logic:
                print(f"   Formula: {formula}")
        except Exception as e:
            print(f"✗ Error testing {expected_logic}: {e}")
    print("-" * 50)


if __name__ == "__main__":
    import sys
    import argparse
    
    parser = argparse.ArgumentParser(
        description='Determine the smallest SMT-LIB logic for a given formula',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
Examples:
  # Detect logic from a .smt2 file
  python smt_logic_detector.py formula.smt2
  
  # Run test cases
  python smt_logic_detector.py --test
  
  # Process multiple files
  python smt_logic_detector.py file1.smt2 file2.smt2 file3.smt2
        '''
    )
    
    parser.add_argument('files', nargs='*', help='SMT2 files to analyze')
    parser.add_argument('--test', action='store_true', help='Run test cases')
    parser.add_argument('-v', '--verbose', action='store_true', help='Show detailed feature detection')
    
    args = parser.parse_args()
    
    if args.test:
        test_logic_detection()
    elif args.files:
        for file_path in args.files:
            try:
                detector = SMTLogicDetector()
                logic = detector.detect_from_file(file_path)
                print(f"{file_path}: {logic}")
                if args.verbose:
                    print(f"  Features: {detector.features}")
            except Exception as e:
                print(f"{file_path}: ERROR - {e}")
    else:
        parser.print_help()
