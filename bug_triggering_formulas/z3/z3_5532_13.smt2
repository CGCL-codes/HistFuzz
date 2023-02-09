(declare-const a Int)
(assert (<= (+ (* (- 3 2) a)) 0))
(check-sat)
