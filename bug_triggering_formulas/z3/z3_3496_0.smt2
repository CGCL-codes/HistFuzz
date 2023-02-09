(define-sort FPN () (_ FloatingPoint 55 53))

(define-sort FPN () (_ FloatingPoint 55 53))

(declare-fun a () FPN)
(declare-fun b () FPN)
(assert (= (fp.sqrt roundTowardPositive a) b))
(check-sat)
(declare-fun a () FPN)
(declare-fun b () FPN)
(assert (= (fp.sqrt roundTowardPositive a) b))
(check-sat)
