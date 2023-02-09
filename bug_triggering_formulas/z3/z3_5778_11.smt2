(declare-fun Sm () Int)
(declare-fun r (Int Int) Int)
(assert (forall ((x Int) (y Int)) (= (= x y) (= Sm (r x y)))))
(check-sat)
