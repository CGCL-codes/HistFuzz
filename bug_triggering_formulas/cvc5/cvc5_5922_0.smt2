(declare-fun f (Bool) Bool)
(assert (forall ((x Bool)) (f (not x))))
(assert (=> (f true) false))
(check-sat)
