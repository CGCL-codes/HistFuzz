(declare-fun t () (_ FloatingPoint 8 24))
(declare-fun z () (_ FloatingPoint 8 24))
(assert (and (fp.eq z w) (fp.leq zero t) (fp.lt z one)))
(check-sat)
