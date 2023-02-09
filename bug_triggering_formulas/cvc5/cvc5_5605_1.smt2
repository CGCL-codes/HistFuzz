(declare-fun b () (_ FloatingPoint 8 24))
(assert (= (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven b b) (fp.mul roundNearestTiesToEven b b)) (fp (_ bv1 1) (_ bv1 8) (_ bv1 23))))
(check-sat)
