(define-sort FPN () (_ FloatingPoint 11 2))

(declare-fun a () FPN)
(declare-fun b () FPN)
(declare-fun c () FPN)
(assert (= (fp.add roundTowardNegative a b) c))
(check-sat)
