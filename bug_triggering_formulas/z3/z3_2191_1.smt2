(declare-fun y () (_ FloatingPoint 3 5))
(assert (not (= (fp.roundToIntegral RNE x) x)))
(assert (= (fp.roundToIntegral RNE y) x))
(check-sat)
