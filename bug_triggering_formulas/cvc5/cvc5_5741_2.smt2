(declare-fun p ((_ BitVec 17) (_ BitVec 16)) Bool)
(assert (p (_ bv0 17) ((_ sign_extend 15) (ite (p (_ bv0 17) (_ bv0 16)) (_ bv1 1) (_ bv0 1)))))
(check-sat)
