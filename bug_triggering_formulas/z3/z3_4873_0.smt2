(declare-fun h (Int) Int)
(assert (forall ((x Int)) (= (h x) 0)))
(declare-fun g (Int) Int)
(push)
(assert (= (h 1) 5))
(check-sat)
