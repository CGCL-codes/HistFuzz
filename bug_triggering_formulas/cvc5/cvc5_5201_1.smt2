(declare-fun _substvar_100_ () Bool)
(declare-fun p0 ((_ BitVec 21) (_ BitVec 12)) Bool)
(assert (p0 ((_ sign_extend 20) (ite _substvar_100_ (_ bv1 1) (_ bv0 1))) (_ bv0 12)))
(check-sat)
