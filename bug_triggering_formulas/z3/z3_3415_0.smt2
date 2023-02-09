(assert (forall ((a Int)) (exists ((b Int)) (forall ((c Int)) (or (distinct (* 13 a) c) (forall ((bb Int)) (xor (distinct (* 192 bb) c) (<= 4 b))))))))
(check-sat)
(assert (forall ((a Int)) (exists ((b Int)) (forall ((c Int)) (or (distinct (* 13 a) c) (forall ((bb Int)) (xor (distinct (* 192 bb) c) (<= 4 b))))))))
(check-sat)
