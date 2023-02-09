(assert (forall ((a Int)) (forall ((b Int)) (exists ((c Int)) (xor and (= (div 82 a) c) (<= 129 b) (exists ((bb Int)) (xor (= (* 32 bb) c) (< 107 b))))))))
(check-sat)
