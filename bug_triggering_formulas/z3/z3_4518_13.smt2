(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.substr a 100 (str.len b)) ""))
(assert (= (str.substr a (str.len b) 1) ""))
(check-sat)
