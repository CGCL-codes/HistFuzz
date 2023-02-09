(declare-fun a () Int)
(declare-fun b (Int) Int)
(assert (distinct (b a) (b (b a))))
(check-sat)
