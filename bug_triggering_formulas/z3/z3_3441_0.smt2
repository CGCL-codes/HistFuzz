(declare-fun a (Int Int) Bool)
(assert (forall ((b Int)) (xor (a 1 b))))
(check-sat)
