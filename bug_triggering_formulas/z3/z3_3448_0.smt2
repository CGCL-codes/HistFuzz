(declare-fun a (Int) Int)
(assert (forall ((b Int)) (= (a b) (div 1 b 2))))
(check-sat)
