(declare-fun _21-0 () (_ BitVec 1))
(assert (bvsmul_noovfl (_ bv1 1) (bvcomp _21-0 (_ bv0 1))))
(check-sat)
