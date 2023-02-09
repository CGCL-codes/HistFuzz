(declare-fun h () a)
(declare-fun i (a) a)
(assert (forall ((j a)) (= (m j j) (ite (and ((_ is b) j)) (m (i (d (c (l j)))) (i (d (k j)))) (ite (and ((_ is m) j)) (b (i (d (e (l j)))) (i (d (f (l j))))) (ite (and ((_ is d) j)) (i (l (l j))) h))))))
(check-sat)
