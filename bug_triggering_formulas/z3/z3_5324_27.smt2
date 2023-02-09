(assert (forall ((X (_ FloatingPoint 2 2))) (= X ((_ to_fp 2 2) roundTowardZero (/ 0.0 1.0)))))
(check-sat)
