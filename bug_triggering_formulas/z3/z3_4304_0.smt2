(declare-fun a () Real)
(assert (> (/ (* a a) (* 2 a)) 2))
(push)
(check-sat)
