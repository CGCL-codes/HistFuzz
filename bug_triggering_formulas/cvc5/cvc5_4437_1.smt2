(declare-fun a () Int)
(assert (forall ((b Int)) (= a b)))
(check-sat)
