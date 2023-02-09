(declare-const i3 Int)
(assert (forall ((q0 Int) (q1 Bool)) (not (distinct q0 i3))))
(check-sat)
