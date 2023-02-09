(declare-fun a () Real)
(assert (distinct a (sin 2)))
(check-sat)
