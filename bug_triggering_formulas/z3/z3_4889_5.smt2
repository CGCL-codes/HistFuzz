(assert (forall ((a Float32)) (not (fp.isNegative (fp.min a (_ +zero 8 24))))))
(check-sat)
