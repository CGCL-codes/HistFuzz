(declare-fun a (Int Int) Bool)
(assert (forall ((b Int) (c Int)) (xor (>= c (/ 7 b)) (a b c))))
(assert (a 4 1))
(check-sat)
