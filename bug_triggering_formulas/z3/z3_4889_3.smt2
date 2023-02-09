(declare-fun a () RoundingMode)
(declare-fun b () (_ FloatingPoint 5 11))
(assert (fp.leq b ((_ to_fp 5 11) a (_ bv0 2))))
(check-sat)
