(assert (forall ((b Int)) (forall ((n Int)) (forall ((s Int)) (=> (and (= (* 3 b) s) (< 0 n)) (exists ((bb Int)) (and (= (* 3 bb) s) (< 0 n))))))))
(check-sat)
