(declare-fun a () (Array Int Bool))
(declare-fun b () (Array Int Bool))
(assert (= a (store b 0 true)))
(check-sat)
