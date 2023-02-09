(assert (forall ((x Real)) (exists ((y Real)) (and (not (= 0.0 y)) (not (= 0.0 (+ y (sin x))))))))
(check-sat)
