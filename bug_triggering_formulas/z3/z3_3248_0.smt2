(declare-sort S0 0)

(assert (exists ((q4 S0) (q5 S0)) (= q5 q5 q4 q5 q5)))
(check-sat)
(check-sat)
(check-sat)
(check-sat)
