(define-sort FP () (_ FloatingPoint 3 5))

(assert (distinct false (exists ((x FP)) (distinct x (fp.sub RTN x x)))))
(check-sat)
