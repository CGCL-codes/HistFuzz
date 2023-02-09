(declare-fun s0 () E)
(assert (forall ((s1 E)) (let ((s2 (>= (E_constrIndex s0) (E_constrIndex s1)))) s2)))
(check-sat)
