(declare-sort a 0)

(declare-sort b 0)

(declare-sort d 0)

(declare-sort e 0)

(declare-fun o (f e d c) a)
(declare-fun g (f) e)
(declare-fun h (f d) c)
(declare-fun i () f)
(declare-fun j (e) d)
(assert (forall ((k e)) (exists ((l c)) (= (o i k (j k) l) (o i (g i) (j k) (h i (j k)))))))
(check-sat)
