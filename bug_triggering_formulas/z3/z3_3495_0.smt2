(define-sort a () (_ FloatingPoint 55 53))

(declare-fun b () a)
(declare-fun c () a)
(declare-fun d () a)
(assert (= (fp.div roundTowardNegative b c) d))
(check-sat)
