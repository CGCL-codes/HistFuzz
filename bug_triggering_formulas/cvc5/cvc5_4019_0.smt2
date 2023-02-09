(assert (forall ((a Int)) (exists ((b Int)) (= (= a 0) (= b 0)))))
(check-sat)
