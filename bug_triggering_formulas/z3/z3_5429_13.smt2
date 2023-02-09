(assert (forall ((a Real)) (exists ((b Int)) (=> (< b 0) (exists ((b Int)) (< b a)) (and (>= b a) (forall ((a Real)) (exists ((b Int)) (= b a))))))))
(check-sat)
