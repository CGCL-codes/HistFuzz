(declare-fun P (Int Int) Bool)
(assert (forall ((x Int) (y Int) (z Int)) (=> (and (P z y) (= x (+ 1 z)) (<= z y)) (P x y))))
(assert (forall ((x Int) (y Int)) (=> (= x 1) (P x y))))
(check-sat)
