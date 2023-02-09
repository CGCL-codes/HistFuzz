(declare-fun c (Int) Int)
(assert (= (c 0) 1))
(assert (exists ((l Int) (k Int)) (and (j k l) (distinct (g k (h k l (g k l l)) l) (g k (h k l 0) l)))))
(check-sat)
