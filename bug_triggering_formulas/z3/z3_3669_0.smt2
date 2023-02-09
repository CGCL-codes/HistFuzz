(declare-fun a (Int) Bool)
(assert (forall ((b Int)) (a (div 2 b))))
(assert (a 1))
(check-sat)
