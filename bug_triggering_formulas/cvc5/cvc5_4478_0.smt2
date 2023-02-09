(declare-fun a () Real)
(assert (> (+ 1 (exp a)) 0))
(check-sat)
