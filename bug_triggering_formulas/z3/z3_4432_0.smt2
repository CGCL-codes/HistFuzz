(assert (forall ((a Int) (b Int)) (exists ((x Int)) (< a (* 20 x) b))))
(check-sat)
