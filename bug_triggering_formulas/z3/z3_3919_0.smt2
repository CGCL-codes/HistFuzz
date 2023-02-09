(assert (forall ((a (_ FloatingPoint 11 53))) (fp.isNaN a)))
(check-sat)
