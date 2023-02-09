(define-sort FP () (_ FloatingPoint 3 5))

(assert (exists ((x FP)) (not (fp.isInfinite (fp.fma RNA x x x)))))
(check-sat)
