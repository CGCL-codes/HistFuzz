(declare-fun f (Int) Int)
(assert (forall ((x Int)) (not (= 1 (f x)))))
(assert (= 1 (f 0)))
(check-sat)
