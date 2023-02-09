(assert (exists ((a Real) (b Real)) (forall ((c Real)) (= (/ b (/ 1 c)) 0))))
(check-sat)
