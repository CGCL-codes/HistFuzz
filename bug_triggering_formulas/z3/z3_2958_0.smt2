(declare-fun f () A)
(assert (exists ((e A)) (distinct f (b e))))
(check-sat)
