(assert (forall ((a Real)) (exists ((b Real) (c Real)) (<= (+ a c) 0.0 c 0.0))))
(check-sat)
