(define-sort FP () (_ FloatingPoint 3 5))

(declare-fun e () FP)
(declare-fun f () FP)
(assert (xor (g e f) (exists ((x FP)) (fp.isNormal (fp.fma RNA e f x)))))
(check-sat)
