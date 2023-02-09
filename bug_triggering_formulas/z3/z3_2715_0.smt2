(declare-fun a () Real)
(assert (= (/ (* 2 a) a) (/ a a) 1))
(check-sat)
