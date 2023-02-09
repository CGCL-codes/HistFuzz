(declare-fun a () Int)
(declare-fun b () Int)
(assert (distinct a b))
(check-sat)
