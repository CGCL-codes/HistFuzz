(define-sort FPN () (_ FloatingPoint 50 53))

(declare-fun a () FPN)
(declare-fun b () FPN)
(declare-fun c () FPN)
(assert (= (fp.add roundTowardPositive b a) c))
(check-sat)
