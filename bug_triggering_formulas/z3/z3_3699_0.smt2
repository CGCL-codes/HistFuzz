(declare-fun P (Int) Bool)
(assert (forall ((a Int)) (P a)))
(assert (forall ((b Int)) (or (P b) (P (+ 2 b)))))
(check-sat)
