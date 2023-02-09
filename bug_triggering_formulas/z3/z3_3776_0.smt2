(define-sort FPN () (_ FloatingPoint 50 100))

(declare-fun x () FPN)
(declare-fun b () FPN)
(declare-fun c () FPN)
(assert (= (fp.sub roundTowardNegative x b) c))
(check-sat)
