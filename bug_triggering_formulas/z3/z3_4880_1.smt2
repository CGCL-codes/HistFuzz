(assert (forall ((Y (_ FloatingPoint 8 24))) (or (distinct (_ bv1 8) ((_ fp.to_sbv 8) roundNearestTiesToEven Y)) (fp.eq Y (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))))))
(check-sat)
