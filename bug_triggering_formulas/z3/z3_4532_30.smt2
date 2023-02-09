(declare-fun a () Real)
(declare-fun b () Real)
(assert (distinct b (^ a 0.0) 1.0))
(check-sat)
