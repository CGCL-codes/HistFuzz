(assert (forall ((_substvar_81_ (_ BitVec 3))) (= (not (bvugt (ite (bvsle _substvar_81_ (_ bv0 3)) (_ bv1 1) (_ bv0 1)) (_ bv0 1))) (bvslt (_ bv0 14) ((_ zero_extend 13) (ite (bvsle _substvar_81_ (_ bv0 3)) (_ bv1 1) (_ bv0 1)))))))
(check-sat)
