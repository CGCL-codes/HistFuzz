(declare-fun a () Real)
(assert (exists ((b Real)) (and (< (* b (+ a 1)) 0) (<= (* (- 2) a b) (mod (to_int b) (to_int (- 2 a))) 0))))
(check-sat)
