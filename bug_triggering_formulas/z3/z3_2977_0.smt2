(assert (forall ((a Real)) (exists ((b Real)) (forall ((c Real)) (or (= (* a c) 0.0) (not (= a 0.0)))))))
(check-sat)
