(declare-fun a () String)
(declare-fun b () String)
(assert (= (str.substr a 0 (str.len b)) "B"))
(assert (= (str.replace a b "") (str.++ "A" b)))
(check-sat)
