(declare-fun a (Int) Bool)
(declare-fun b (Int) Bool)
(assert (distinct a b))
(check-sat)
