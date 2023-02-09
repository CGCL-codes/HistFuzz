(declare-fun arr () (Array Bool Int))
(declare-fun i10 () Int)
(assert (forall ((v18 Bool)) (forall ((i4 Int)) (and (not (= i10 0)) (<= (select (store arr v18 1) false) i4)))))
(check-sat)
