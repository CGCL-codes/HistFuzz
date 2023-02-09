(declare-fun f (Int Int) Int)
(assert (forall ((x Int) (y Int)) (not (= (f x y) (+ (* 2 x) (* 3 y))))))
(check-sat)
