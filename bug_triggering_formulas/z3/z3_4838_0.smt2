(declare-fun r0 () Real)
(declare-fun r1 () Real)
(assert (<= r0 0.0))
(assert (= r1 (^ r0 0.0)))
(assert (distinct r1 1.0))
(check-sat)
