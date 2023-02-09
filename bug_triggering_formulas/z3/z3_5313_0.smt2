(declare-fun i () Int)
(assert (exists ((a1 (Array Int Int))) (forall ((i2 Int)) (= (store a1 0 0) (store (store (store a1 0 i) 1 i2) 0 0)))))
(check-sat)
