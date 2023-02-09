(declare-fun a (Int Int) Int)
(declare-fun b () (Array Int Int))
(assert (= (select b (a 8 1)) (select b (a 5 6))))
(check-sat)
