(assert (forall ((a Int) (b Int)) (and (= (* 2 a) b) (xor (distinct 0 b) (> b 0)))))
(check-sat)
