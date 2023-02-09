(assert (exists ((r3 Real)) (forall ((v4 Bool)) (exists ((v2 Bool)) (and v2 v4 (or (< 1.0 r3) (< r3 0.0)))))))
(check-sat)
