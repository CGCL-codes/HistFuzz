(assert (forall ((a Real)) (exists ((b Real)) (and (= (/ 0 b) 0) (= a (/ 0 0))))))
(check-sat)
