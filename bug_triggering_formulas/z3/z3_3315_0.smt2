(assert (forall ((a Real) (b Real)) (or (>= (+ a b) (- 10 0)) (not (<= (+ (* a b)) 0)) (>= (+ (mod 0 b)) 3))))
(check-sat)
