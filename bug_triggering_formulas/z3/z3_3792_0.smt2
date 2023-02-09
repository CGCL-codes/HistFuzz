(assert (exists ((x Int)) (forall ((y Int)) (distinct x y))))
(check-sat)
(assert (exists ((x Int)) (forall ((y Int)) (distinct x y))))
(check-sat)
