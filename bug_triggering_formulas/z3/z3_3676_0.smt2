(declare-fun a (Int) Bool)
(assert (forall ((b Int)) (or (and (a b) (< b 1)) (a (- b 1)))))
(check-sat)
