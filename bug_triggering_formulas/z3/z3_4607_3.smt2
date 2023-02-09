(declare-fun a () String)
(declare-fun b () String)
(assert (distinct "A" (str.substr a 0 (str.len b))))
(check-sat)
