(declare-fun a () Real)
(assert (or (> a 0) (< a 0)))
(check-sat)
