(declare-fun f (Int) Bool)
(declare-fun g (Int) Bool)
(assert (distinct f g))
(check-sat)
