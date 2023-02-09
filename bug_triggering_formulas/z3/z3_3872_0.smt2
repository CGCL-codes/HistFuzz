(assert (exists ((a Real)) (forall ((b Real)) (xor (< b 0.0) (> b (mod (to_int b) (to_int 0.0)))))))
(check-sat)
