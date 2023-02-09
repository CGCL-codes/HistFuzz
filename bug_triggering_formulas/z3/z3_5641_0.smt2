(declare-fun a (Int Int) Int)
(declare-fun b (Int Int Real) (Array Int (Array Int Real)))
(assert (forall ((c Int) (d Int) (e Int) (f Int) (g Real)) (and (= (select (select (b 0 (a e f) g) c) d) g))))
(check-sat)
