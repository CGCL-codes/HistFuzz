(declare-fun a () Real)
(assert (not (= (/ a 0.5 (sin (/ 0 0))) 0)))
(check-sat)
