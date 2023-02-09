(assert (forall ((R Real)) (xor (= 0.0 (ite (exists ((d Real)) false) 0.0 0)))))
(check-sat)
