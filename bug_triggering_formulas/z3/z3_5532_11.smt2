(assert (<= (- 0 (- 1)) (ite (exists ((a Real)) (= a 0)) 0 1)))
(check-sat)
