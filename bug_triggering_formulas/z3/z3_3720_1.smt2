(declare-sort a)

(declare-fun b () a)
(declare-fun e (Int Int) a)
(assert (forall ((d Int) (c Int)) (= (= (e d c) b) (<= d c))))
(check-sat)
