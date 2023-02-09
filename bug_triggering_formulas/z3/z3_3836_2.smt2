(declare-fun x () Real)
(assert (< x 0))
(assert (forall ((y Real)) (xor (> y 1) (<= y x))))
(check-sat)
