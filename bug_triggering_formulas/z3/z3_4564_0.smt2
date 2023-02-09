(define-sort FP () (_ FloatingPoint 3 5))

(declare-const s FP)
(declare-const x FP)
(assert (fp.isInfinite (fp.rem x s)))
(check-sat)
