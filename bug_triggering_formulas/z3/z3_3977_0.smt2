(declare-fun a () String)
(declare-fun b () String)
(assert (distinct a b))
(check-sat)
