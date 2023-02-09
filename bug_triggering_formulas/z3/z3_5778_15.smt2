(declare-fun a () (Array Int Int))
(declare-fun b () (Array Int Int))
(assert (= a (store b 1 1)))
(check-sat)
