(declare-const x16 Real)
(declare-fun r () Real)
(assert (forall ((V Real)) (distinct x16 (* (sin r) (sin 1.0)))))
(assert (= 0.0 (ite (exists ((b Real)) (exists ((d Real)) false)) 0.0 0)))
(check-sat)
