(declare-fun a () (_ FloatingPoint 2 6))
(declare-fun Y () (_ FloatingPoint 2 6))
(assert (= a (fp.roundToIntegral RTZ Y)))
(check-sat)
