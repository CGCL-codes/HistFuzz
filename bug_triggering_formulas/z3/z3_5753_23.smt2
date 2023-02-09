(declare-fun t (a L) L)
(assert (forall ((n a) (l L)) (= (t n l) (ite ((_ is z) n) i (o (e l) (t (p n) (t l)))))))
(check-sat)
