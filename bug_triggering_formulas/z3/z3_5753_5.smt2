(declare-fun q1 (Int Real) Bool)
(declare-fun q2 (Real Real) Bool)
(assert (forall ((x1 Int) (x2 Real)) (or (q2 x2 x2) (exists ((y Real)) (or (q1 y x2) (q1 x1 x2))))))
(check-sat)
