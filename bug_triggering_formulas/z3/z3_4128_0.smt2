(declare-sort a)

(declare-fun f (a) a)
(assert (forall ((t a)) (= (f t) t)))
(check-sat)
