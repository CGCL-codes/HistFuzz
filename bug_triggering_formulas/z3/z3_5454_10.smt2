(declare-fun a () Int)
(assert (<= (- a a) 0 (div a 0)))
(check-sat)
