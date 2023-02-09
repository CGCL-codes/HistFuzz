(assert (forall ((q1 Real) (q2 Real) (q3 Bool)) (=> (distinct (* (- (- q2 q1) q2) q2) q1) (=> q3 q3))))
(assert (forall ((q26 Real) (q27 Real) (q28 Bool)) (=> (> (* (+ q27 q27) q27) q27 q26 (* (+ q27 q27) q27)) (and q28 q28 q28))))
(check-sat)
