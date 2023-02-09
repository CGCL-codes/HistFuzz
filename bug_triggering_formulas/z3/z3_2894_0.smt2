(declare-fun x () (_ FloatingPoint 3 24))
(declare-fun rm () RoundingMode)
(assert (distinct (fp.roundToIntegral rm (fp.roundToIntegral rm x)) (fp.roundToIntegral rm x)))
(check-sat)
