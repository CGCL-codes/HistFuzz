(declare-fun P (Int) Bool)
(assert (forall ((x Int)) (or (not (P x)) (P (+ x)))))
(assert (P 1))
(assert (exists ((y Int)) (not (P 0))))
(check-sat)
