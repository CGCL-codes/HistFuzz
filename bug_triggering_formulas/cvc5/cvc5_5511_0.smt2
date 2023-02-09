(declare-fun a () (_ FloatingPoint 53 11))
(assert (= a (_ +oo 53 11)))
(check-sat)
