(declare-fun _substvar_38_ () (_ BitVec 1))
(assert (distinct (bvcomp (bvnor (_ bv0 1) _substvar_38_) (bvsrem (_ bv0 1) (_ bv0 1))) (_ bv0 1)))
(check-sat)
