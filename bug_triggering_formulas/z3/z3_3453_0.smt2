(define-sort a () (_ FloatingPoint 11 2)) 

(declare-fun b () a)
(declare-fun c () a)
(declare-fun d () a)
(assert (distinct (fp.sub roundTowardZero b c) d))
(check-sat)
