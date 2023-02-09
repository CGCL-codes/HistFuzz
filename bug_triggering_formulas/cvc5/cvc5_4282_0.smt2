(declare-fun a () String)
(declare-fun b () Int)
(assert (distinct (str.at a b) ""))
(check-sat)
