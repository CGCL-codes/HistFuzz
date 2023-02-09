(declare-fun a () (_ FloatingPoint 2 6))
(assert (= (fp.div RTZ a a) a))
(check-sat)
