(declare-fun b (Int) Bool)
(assert (forall ((c Int) (d Int)) (and (> d 3) (xor (>= c d) (b c)))))
(check-sat)
