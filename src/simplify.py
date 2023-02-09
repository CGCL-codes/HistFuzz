"""
MIT License

Copyright (c) 2023 The histfuzz authors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""


import multiprocessing
import random

# from z3 import *

from src.building_blocks import check_sort_func
from src.parsing.Ast import DeclareFun, Define, DeclareConst, DefineConst, FunDecl, Assert, CheckSat, Push, Pop, Term
from src.parsing.TimeoutDecorator import exit_after
from src.skeleton import has_let, process_seed
from src.solver_run.solver import creat_process_and_get_result
from src.utils.file_operation import get_smt_files_list
import os


def elim_let(seeds_path, cores):
    def expand_let(smt_file):
        @exit_after(120)
        def expand_let_in_a_file(single_smt_file):
            s, t = process_seed(single_smt_file)
            for idx, cmd in enumerate(s.commands):
                if isinstance(cmd, Assert):
                    let_var = obtain_let_var(cmd.term)
                    true_term = obtain_term(cmd.term)
                    # term, lv = process_term(cmd.term, let_var)
                    if let_var and true_term is not None:
                        new_let_var = eliminate_var(let_var)
                        for v in new_let_var.keys():
                            if v in true_term:
                                true_term = true_term.replace(" " + v + " ", " " + new_let_var[v] + " ")
                                true_term = true_term.replace(" " + v + ")", " " + new_let_var[v] + ")")
                                true_term = true_term.replace(" " + v + "\n", " " + new_let_var[v] + "\n")
                    s.commands[idx] = "(assert " + true_term + ")"
            return str(s)

        return expand_let_in_a_file(smt_file)

    def obtain_let_var(term: Term):
        var_dict = dict()
        if term.let_terms and term.var_binders:
            for i, var in enumerate(term.var_binders):
                # print(var, term.let_terms[i])
                var_dict[var] = str(term.let_terms[i])
            # print(var_dict.keys())
        if term.subterms is not None and len(term.subterms) > 0:
            for sub in term.subterms:
                if isinstance(sub, Term):
                    new_dict = obtain_let_var(sub)
                    var_dict.update(new_dict)

        return var_dict

    def obtain_term(term: Term):
        t = None
        if term.let_terms and term.var_binders:
            if term.subterms is not None and len(term.subterms) > 0:
                for sub in term.subterms:
                    if isinstance(sub, Term):
                        t = obtain_term(sub)
        else:
            t = term
        return str(t)

    def contain_var(subformula: str, var_list: list):
        for i in var_list:
            if i in subformula:
                return True
        return False

    def eliminate_var(var_dic: dict):
        var_list = list(var_dic.keys())
        nocontain_dict = dict()
        contain_dict = dict()
        for var1 in var_list:
            if contain_var(var_dic[var1], var_list):
                contain_dict[var1] = var_dic[var1]
            else:
                nocontain_dict[var1] = var_dic[var1]
        while contain_dict:
            for var2 in list(contain_dict.keys()):
                new_formula = contain_dict[var2]
                for replace in nocontain_dict.keys():
                    if replace in contain_dict[var2]:
                        new_formula = new_formula.replace(" " + replace + " ", " " + nocontain_dict[replace] + " ")
                        new_formula = new_formula.replace(" " + replace + "\n", " " + nocontain_dict[replace] + "\n")
                        new_formula = new_formula.replace(" " + replace + ")", " " + nocontain_dict[replace] + ")")
                if contain_var(new_formula, var_list):
                    contain_dict[var2] = new_formula
                else:
                    nocontain_dict[var2] = new_formula
                    contain_dict.pop(var2)
        return nocontain_dict

    def manipulate_a_file_to_eliminate_let(file_list):
        for file in file_list:
            if has_let(file):
                print(file)
                try:
                    new_formula = expand_let(file)
                    with open(file, "w") as f:
                        f.write(new_formula)
                    print("expand success")
                except:

                    print("failure")
            else:
                pass

    core = 0
    seed_list = get_smt_files_list(seeds_path)
    random.shuffle(seed_list)
    count = len(seed_list) // cores
    for i in range(cores):
        # path_dir = os.listdir(path)
        # for directory in path_dir:
        # single_path = path + "/" + directory
        # if os.path.exists(single_path):
        if i != cores - 1:
            process = multiprocessing.Process(target=manipulate_a_file_to_eliminate_let,
                                              args=(seed_list[i * count: (i + 1) * count],))
        else:
            process = multiprocessing.Process(target=manipulate_a_file_to_eliminate_let,
                                              args=(seed_list[i * count:],))
        process.start()
        os.system("taskset -p -c " + str(core) + " " + str(process.pid))
        core += 1


def read_file(path):
    file_list = get_smt_files_list(path)
    for file in file_list:
        with open(file, "r") as f:
            content = f.read()
        if "declare-sort" in content or "define-sort" in content:
            pass
            # print("sort: ", file)
        if "datatype" in content:
            # print("datatype: ", file)
            pass
        if "define-fun" in content:
            print("define-fun: ", file)


def standardize_instance(file_path):
    file_list = get_smt_files_list(file_path)
    for f in file_list:
        print(f)
        # if check_sort_func(f):
        standardize_single_instance(f)


def standardize_single_instance(file):
    script, var = process_seed(file)
    new_script = []
    if script is not None:
        with open(file, "r") as f:
            content = f.readlines()
        for line in content:
            if "declare-sort" in line or "define-sort" in line:
                new_script.append(line)
        for i in script.commands:
            if check_ast_type(type(i)):
                new_script.append(str(i))
        if len(new_script) > 1:
            if "(check-sat)" not in new_script[-1] and "(check-sat)" not in new_script[-2]:
                new_script.append("(check-sat)")
        elif len(new_script) == 1 and "(check-sat)" not in new_script[-1]:
            new_script.append("(check-sat)")
        with open(file, "w") as f2:
            for l in new_script:
                f2.write(l + "\n")
    else:
        # print(file)
        os.remove(file)


def check_ast_type(ast_type):
    if ast_type in [Define, DefineConst, DeclareConst, DeclareFun, FunDecl, Assert, Push, Pop, CheckSat]:
        return True
    else:
        return False


def filter_valid_seed(file_path):
    file_list = get_smt_files_list(file_path)
    for file in file_list:
        command1 = "timeout 10s /cvc5-ver/cvc5-cov/build/bin/cvc5 --incremental -q --strings-exp " + file + "> /tempout.txt"
        command2 = "timeout 10s /z3-ver/z3-cov/build/z3 " + file + "> /tempout.txt"
        out1 = creat_process_and_get_result(command1, "/tempout.txt", "incremental")
        out2 = creat_process_and_get_result(command2, "/tempout.txt", "incremental")

        print(out1, out2)
        if out1 in ["error", "parseerror", "timeout"] or out2 in ["error", "parseerror", "timeout"]:
            os.remove(file)
            print(file)


def simplify_formula(seed):
    formula = parse_smt2_file(seed)
    # s_f = simplify(formula)
    # print(formula)
    ss = Solver()
    for f in formula:
        # print(f)
        # s_f = simplify(f, algebraic_number_evaluator=False, elim_ite=False, elim_and=True, push_to_real=False)
        s_f = simplify(f)
        # print(s_f)
        ss.add(s_f)
    new = seed.replace(".smt2", "s.smt2")
    with open(new, "w") as file:
        file.write(ss.to_smt2())

    # print(s_f)


def convert_cnf(seed):
    formula = parse_smt2_file(seed)
    t = Tactic("tseitin-cnf")
    s = t.solver()
    for f in formula:
        s.add(f)
    print("\ncnf")
    new = seed.replace(".smt2", "c.smt2")
    with open(new, "w") as file:
        file.write(s.to_smt2())


if __name__ == "__main__":
    elim_let("/root/benchmark", 48)
