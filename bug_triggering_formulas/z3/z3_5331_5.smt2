(declare-fun s () (Array Int Int))
(declare-fun f (Int Int) Int)
(assert (and (forall ((y Int)) (= 0 (f 0 0)))))
(assert (= s ((_ map f) s s)))
(check-sat)
