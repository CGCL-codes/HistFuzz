(declare-fun s0 () (_ FloatingPoint 11 53))
(assert (let ((s1 (fp.isSubnormal s0))) s1))
(check-sat)
