(declare-fun X () (_ FloatingPoint 2 3))
(assert (= X (_ -oo 2 3)))
(check-sat)
