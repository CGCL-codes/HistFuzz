(assert (exists ((a Real)) (forall ((b Real)) (exists ((c Real)) (>= (+ 8 (/ 1 (+ (/ 0 a) (- 2 b)) (- c))) 0)))))
(check-sat)
