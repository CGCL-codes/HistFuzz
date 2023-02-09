(declare-fun a () Real)
(assert (= (* 40 a a) 30))
(push)
(check-sat)
