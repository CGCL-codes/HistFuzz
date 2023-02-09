(declare-fun a () (_ FloatingPoint 47 53))
(assert (fp.eq a a))
(check-sat)
