(declare-fun c (a Real) Real)
(assert (forall ((d a) (e Int)) (= (c d e) e)))
(assert (= 0 (c b 0)))
(check-sat)
