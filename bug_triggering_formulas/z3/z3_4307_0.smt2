(declare-fun a () String)
(declare-fun b () Int)
(assert (distinct (str.substr a b (str.indexof "A" a b)) ""))
(check-sat)
