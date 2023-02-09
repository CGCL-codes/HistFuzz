(assert (forall ((q14 Real) (q15 Real) (q16 Real) (q17 Real) (q18 Real) (q19 Bool)) true))
(assert (forall ((q20 Real) (q21 Real) (q22 Real) (q23 Real) (q24 Real) (q25 Bool)) (=> q25 (distinct q21 (+ q23 q20 q20)))))
(check-sat)
