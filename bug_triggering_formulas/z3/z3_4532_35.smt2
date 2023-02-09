(declare-sort o 0)

(declare-sort t 0)

(declare-sort g 0)

(declare-fun d () q)
(declare-fun l (k q) q)
(declare-fun e (o) k)
(declare-fun f (o) q)
(declare-fun m (t) k)
(declare-fun h (g) q)
(assert (forall ((i o)) (and (= (l (e i) (f i)) (ite ((_ is s) (f i)) s (ite ((_ is dp) (e i)) (f i) (ite (and ((_ is a) (e i))) (l (b (e i)) (c (f i))) d)))) (ite ((_ is s) (f i)) true (ite ((_ is dp) (e i)) true (ite (and ((_ is r) (f i))) (not (forall ((p o)) (not (and (= (e p) (b (e i))))))) true))))))
(assert (forall ((i g)) (and (ite ((_ is s) (h i)) true (ite ((_ is r) (h i)) (not (forall ((p g)) (not (= (h p) (c (h i)))))) true)))))
(assert (exists ((j k) (n q)) (not (and (forall ((p o)) (not (and (= (e p) j)))) (forall ((p t)) (not (and (= (m p) j)))) (forall ((p g)) (not (= (h p) n)))))))
(check-sat)
