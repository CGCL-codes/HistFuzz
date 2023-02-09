(declare-fun a () String)
(declare-fun b () String)
(assert (not (= a b)))
(check-sat)
