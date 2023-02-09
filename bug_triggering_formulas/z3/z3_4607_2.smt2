(declare-fun a () String)
(assert (= "A" (str.substr a 0 1) ""))
(check-sat)
