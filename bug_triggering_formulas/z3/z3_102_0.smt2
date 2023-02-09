(declare-fun s0 () (_ FloatingPoint 11 53))
(assert (let ((s2 (fp.eq s0 s1))) s2))
(check-sat)
