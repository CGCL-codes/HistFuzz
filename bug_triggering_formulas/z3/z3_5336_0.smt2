(declare-sort u1)

(declare-sort u2)

(declare-fun Concat (Bool u1) u2)
(declare-fun w5 () u2)
(assert (forall ((mod Bool)) (exists ((n2 u2)) (exists ((n1 u1)) (not (= w5 (Concat mod n1)))))))
(check-sat)
