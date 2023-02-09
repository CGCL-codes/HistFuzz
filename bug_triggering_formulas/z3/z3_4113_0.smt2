(declare-fun e () b)
(assert (forall ((f b)) (= (ite (= u (d f)) f (c (d f) f)) e)))
(check-sat)
