(declare-fun a () Real)
(assert (< (* a (exp a)) 1))
(check-sat)
