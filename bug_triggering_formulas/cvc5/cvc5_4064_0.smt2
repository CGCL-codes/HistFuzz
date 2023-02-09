(assert (exists ((b Real)) (forall ((c Real)) (xor (< c 1.0) (> b 0)))))
(check-sat)
