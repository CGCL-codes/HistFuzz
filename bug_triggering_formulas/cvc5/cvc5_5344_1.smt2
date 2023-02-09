(declare-sort l 0)

(declare-fun s () a)
(declare-fun n (l) a)
(assert (forall ((i l)) (= (n i) (ite ((_ is b) (n i)) (b (c (n i)) (n i)) s))))
(assert (exists ((o a)) (exists ((q l)) (not (= o (n q))))))
(check-sat)
