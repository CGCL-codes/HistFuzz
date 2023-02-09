(assert (forall ((x Real)) (exists ((y Int)) (xor (> y x) (>= y (* 2 x))))))
(check-sat)
(assert (forall ((x Real)) (exists ((y Int)) (xor (> y x) (>= y (* 2 x))))))
(check-sat)
