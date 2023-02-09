(define-sort FPN () (_ FloatingPoint 5 11))

(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= r (fp.roundToIntegral roundNearestTiesToEven x)))
(assert (= r (fp (_ bv0 1) #b10000 (_ bv0 10))))
(check-sat)
