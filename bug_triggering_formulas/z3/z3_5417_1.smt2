(assert (forall ((s (_ BitVec 2))) (= s (ite (= (_ bv1 1) ((_ extract 1 1) s)) (_ bv0 2) (bvneg s)))))
(check-sat)
