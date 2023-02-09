(assert (exists ((a Real)) (forall ((b Real)) (<= (div (to_int a) (to_int b)) 0.0))))
(check-sat)
