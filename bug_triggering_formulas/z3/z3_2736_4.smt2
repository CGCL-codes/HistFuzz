(declare-fun a () String)
(declare-fun b () Int)
(assert (distinct (str.substr "A" b (str.indexof a "" 4)) (str.substr "A" b (str.len a))))
(check-sat)
