(declare-fun r1 () Real)
(declare-fun r5 () Real)
(assert (forall ((q102 Int)) (or (= q102 (/ r1 r5)) (= (= 0.0 q102) (< 1.0 (/ r1 r5))))))
(check-sat)
