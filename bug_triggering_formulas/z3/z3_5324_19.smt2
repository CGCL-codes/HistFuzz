(declare-sort a)

(declare-sort b)

(declare-sort c)

(declare-sort d)

(declare-sort s)

(declare-sort e)

(declare-sort f)

(declare-sort g)

(declare-fun h () a)
(declare-fun i (c b) a)
(declare-fun j () c)
(declare-fun k (s e) a)
(declare-fun l (b d) s)
(declare-fun m (f) e)
(declare-fun n (g) f)
(declare-fun o () g)
(assert (forall ((p b)) (distinct (distinct (i j p) h) (exists ((q d) (r b)) (distinct (k (l r q) (m (n o))) h)))))
(check-sat)
