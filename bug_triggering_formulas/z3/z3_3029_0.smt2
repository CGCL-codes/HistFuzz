(declare-sort E 0)

(declare-fun f (E) Bool)
(declare-fun g (E) E)
(assert (forall ((a E)) (f (g a))))
(check-sat)
