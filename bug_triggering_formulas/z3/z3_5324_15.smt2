(declare-sort a)

(declare-fun b (Int) a)
(assert (forall ((c Int)) (not (= (b (* 3 c)) (b 1)))))
(check-sat)
