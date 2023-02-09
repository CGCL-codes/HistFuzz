(declare-fun a () (_ FloatingPoint 2 10))
(declare-fun b () RoundingMode)
(assert (distinct (fp.roundToIntegral b (fp.roundToIntegral b a)) (fp.roundToIntegral b a)))
(check-sat)
