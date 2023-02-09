(declare-fun a () Real)
(push)
(assert (= (* a (* 2 a) (* 3 a)) 1))
(check-sat)
