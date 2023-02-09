(declare-fun a () Real)
(assert (distinct (sin a) 0.0))
(check-sat)
