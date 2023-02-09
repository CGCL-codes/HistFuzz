(declare-fun f () Int)
(assert (distinct f (c (e (c 0 1) 2) 0)))
(check-sat)
