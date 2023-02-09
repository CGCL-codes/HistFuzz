(declare-fun a () Real)
(declare-fun b () Real)
(assert (> (+ (* 2 a) (* (- 2) b)) 0))
(check-sat)
