(assert (forall ((r (Array Bool Int)) (a (Array Int (Array Bool Int)))) (distinct (store r false 1) (a 0))))
(check-sat)
