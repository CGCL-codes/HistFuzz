(declare-fun col (Int) Int)
(assert (forall ((x Int)) (=> (= x 0) (= (col x) (col (+ x 1))))))
(assert (distinct (col 0) 0))
(check-sat)
(declare-fun col (Int) Int)
(assert (distinct (col 0) 0))
(check-sat)
