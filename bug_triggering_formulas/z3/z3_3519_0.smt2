(define-sort FPN () (_ FloatingPoint 31 43))

(declare-fun a () FPN)
(declare-fun b () FPN)
(declare-fun c () FPN)
(assert (distinct (fp.rem a b) c))
(check-sat)
