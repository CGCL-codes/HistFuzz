(declare-fun a () Real)
(declare-fun b () Real)
(assert (distinct a (^ b 0.0)))
(check-sat)
