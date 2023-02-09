(define-sort FPN () (_ FloatingPoint 46 53))

(define-sort FPN () (_ FloatingPoint 46 53))

(declare-fun a () FPN)
(declare-fun y () FPN)
(declare-fun b () FPN)
(assert (= (fp.mul roundTowardZero a y) b))
(check-sat)
(declare-fun a () FPN)
(declare-fun y () FPN)
(declare-fun b () FPN)
(assert (= (fp.mul roundTowardZero a y) b))
(check-sat)
