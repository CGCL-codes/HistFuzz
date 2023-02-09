(declare-fun var1 () Real)
(assert (distinct (^ var1 0.0) 1.0))
(check-sat)
