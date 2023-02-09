(declare-fun a () Real)
(assert (= (/ a (* a (* a a (* (* a a) a))) (* a (* a a (* (* a a) a)))) (* 2 2 2)))
(check-sat)
