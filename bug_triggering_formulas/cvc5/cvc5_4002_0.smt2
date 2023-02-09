(declare-sort S0 0)

(declare-const S0-0 S0)
(check-sat)
(assert (forall ((q2 S0)) (not (distinct q2 S0-0))))
(check-sat)
