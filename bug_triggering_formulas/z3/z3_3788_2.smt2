(assert (forall ((a Int) (b Int)) (exists ((c Int)) (> b c a))))
(check-sat)
