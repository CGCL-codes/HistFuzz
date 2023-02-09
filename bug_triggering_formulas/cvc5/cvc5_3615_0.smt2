(declare-fun f (Int) Bool)
(assert (forall ((x Int) (y Int)) (or (>= x 0) (<= x 0) (< y 0) (> y x) (f x))))
(check-sat)
