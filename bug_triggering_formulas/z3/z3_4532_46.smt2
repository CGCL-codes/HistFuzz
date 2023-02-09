(assert (forall ((a Real) (b Real)) (xor (is_int a) (<= (/ 1 a (* (div 5 0) b)) (* (+ 2 a) (/ 0 b))))))
(check-sat)
