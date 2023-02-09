(declare-fun i5 () Int)
(declare-fun v41 () Bool)
(assert (distinct (forall ((q312 Bool) (q313 Int)) (or (not (= v41 q312)) (= q313 (abs (abs i5)))))))
(check-sat)
