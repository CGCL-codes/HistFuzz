(assert (forall ((x2 Real)) (exists ((x0 Real)) (exists ((x1 Real)) (and (< (* x0 (- 1)) 0.0) (> (+ x1 (* x0 (- 2))) 0.0))))))
(check-sat)
