(declare-fun a () (_ FloatingPoint 11 53))
(assert (= (fp.to_real a) 0.0))
(check-sat)
