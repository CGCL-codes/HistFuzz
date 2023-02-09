(declare-fun x1 () (_ FloatingPoint 2 3))
(declare-fun x0 () (_ FloatingPoint 2 3))
(assert (= (fp #b0 #b10 #b10) (fp.min (fp.sqrt RNE (fp.mul RNE (_ +zero 2 3) (fp.div RTZ (fp.sub RNE (fp.max (fp.div RTN (_ -zero 2 3) x0) x1) x0) (_ +zero 2 3)))) x1)))
(check-sat)
