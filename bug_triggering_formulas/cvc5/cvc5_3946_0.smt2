(declare-fun a () Real)
(assert (or (distinct a 0) (= a 0)))
(check-sat)
