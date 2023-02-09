(declare-fun s0 () (_ FloatingPoint 8 24))
(assert (= s0 (fp.roundToIntegral roundNearestTiesToEven ((_ to_fp 8 24) roundNearestTiesToEven (/ 9 10)))))
(check-sat)
