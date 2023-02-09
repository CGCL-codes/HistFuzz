(declare-sort e 0)

(declare-sort k 0)

(declare-fun l (b f) Bool)
(declare-fun m (k) b)
(declare-fun n (k) f)
(declare-fun o () b)
(assert (forall ((p k)) (distinct (l (m p) (n p)) (= ((_ is g) (n p)) (l (d (m p)) (h (n p)))))))
(assert (exists ((q k)) (= o (m q))))
(check-sat)
