(declare-sort S0 0)

(assert (forall ((q0 Bool) (q1 S0) (q2 Bool) (q3 S0)) (= q1 q1 q3 q3)))
(push)
(assert false)
(check-sat)
(pop)
(check-sat)
