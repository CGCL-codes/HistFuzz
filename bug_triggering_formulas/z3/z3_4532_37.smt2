(declare-fun b (T) Real)
(assert (forall ((c T) (d Int)) (= (b c) d)))
(assert (forall ((e Int)) (= e 0)))
(check-sat)
