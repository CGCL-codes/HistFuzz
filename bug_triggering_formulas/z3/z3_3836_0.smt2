(assert (forall ((x Real)) (forall ((y Int)) (xor (< y x) (<= y (* 236 x (- 114)))))))
(check-sat)
