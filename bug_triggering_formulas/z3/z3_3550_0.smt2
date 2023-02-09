(declare-fun a () Real)
(declare-fun b () Real)
(assert (< b (* (* a a) 2) b))
(check-sat)
