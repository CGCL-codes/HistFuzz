(declare-fun a () (_ FloatingPoint 65 2))
(assert (= (fp.abs (fp.neg a)) a))
(check-sat)
