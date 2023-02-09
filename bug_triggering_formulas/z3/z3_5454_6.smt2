(declare-fun p (Int Int) Bool)
(assert (forall ((x Int) (y Int)) (xor (and (<= 0 y) (<= y x)) (p x y))))
(check-sat)
