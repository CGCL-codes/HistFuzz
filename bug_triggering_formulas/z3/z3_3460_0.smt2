(declare-fun a () Int)
(declare-fun b (Int) Int)
(assert (forall ((c Int)) (distinct (b (mod c 8)) 0)))
(check-sat)
