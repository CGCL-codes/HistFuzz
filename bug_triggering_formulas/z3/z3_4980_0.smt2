(declare-sort S0 0)

(declare-fun r3 () Real)
(declare-fun i10 () Int)
(assert (<= (ite (exists ((q118 Int) (q119 Int) (q120 S0) (q121 S0) (q122 Real)) (xor (= 0 q118) (>= 0.0 (to_real i10)) true)) (to_int r3) 0) (to_int r3)))
(check-sat)
