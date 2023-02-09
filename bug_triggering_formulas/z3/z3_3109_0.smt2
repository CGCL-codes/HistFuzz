(assert (forall ((a Real) (b Real)) (or (is_int a) (> (+ a 9 (- b)) 0) (>= (* (* 4 10) a (* 20 b)) (- 1)))))
(check-sat)
