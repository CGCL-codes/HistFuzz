(assert (forall ((a Real)) (= (* (to_int (+ a 1)) (to_int a)) 1)))
(check-sat)
