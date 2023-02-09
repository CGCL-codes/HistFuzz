(assert (forall ((a Int)) (or (distinct (/ 0 0) a) (= (/ 0 a) 0))))
(check-sat)
(assert (forall ((a Int)) (and (distinct (/ 0 0) a) (= (/ 0 a) 0))))
(check-sat)
