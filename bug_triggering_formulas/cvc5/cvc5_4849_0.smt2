(assert (forall ((a Int)) (exists ((b Int)) (= (ite (= a 0) 0 1) (ite (= b 0) 0 1)))))
(check-sat)
