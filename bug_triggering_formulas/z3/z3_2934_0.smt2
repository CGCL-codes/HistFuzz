(define-sort a () (_ FloatingPoint 52 53))

(declare-fun b () a)
(declare-fun c () a)
(declare-fun d () a)
(assert (distinct (fp.rem b c) d))
(check-sat)
