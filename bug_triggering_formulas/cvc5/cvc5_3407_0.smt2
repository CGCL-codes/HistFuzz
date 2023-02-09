(declare-fun a () Real)
(declare-fun b () Real)
(assert (= (* a b) 1))
(check-sat)
