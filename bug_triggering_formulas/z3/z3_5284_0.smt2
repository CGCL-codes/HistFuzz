(declare-fun Z () (_ FloatingPoint 2 6))
(declare-fun Y () (_ FloatingPoint 2 6))
(declare-fun X () (_ FloatingPoint 2 6))
(declare-fun W () (_ FloatingPoint 2 6))
(declare-fun named0 () Bool)
(declare-fun named5 () Bool)
(declare-fun named6 () Bool)
(declare-fun named7 () Bool)
(assert (or named0 (= X (fp.fma roundTowardZero Y Z W))))
(assert (or named5 (= X (fp.roundToIntegral roundTowardZero Y))))
(assert (or named6 (= X (fp.min Y Z))))
(assert (or named7 (not (= X (fp.min Y Z)))))
(check-sat)
