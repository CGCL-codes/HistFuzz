(declare-fun a () (Array Bool Bool))
(declare-fun b () (Array Bool Bool))
(assert (select a (= a b)))
(check-sat)
