(declare-fun a (Int Int) Int)
(assert (distinct (a 0) (a 1)))
(check-sat)
