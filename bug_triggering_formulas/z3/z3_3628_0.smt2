(declare-fun a () Bool)
(declare-fun b () String)
(assert (= a (= "" b)))
(check-sat)
