(assert (forall ((a Int) (b Int) (c Int)) (or (= (- a) b) (distinct (- a c) b))))
(check-sat)
