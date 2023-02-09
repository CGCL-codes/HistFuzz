(define-sort FPN () (_ FloatingPoint 34 53))

(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun b () FPN)
(assert (= (fp.add roundNearestTiesToEven x y) b))
(check-sat)
