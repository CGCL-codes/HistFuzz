(declare-fun a () String)
(assert (= "A" (str.substr a 1 1) ""))
(check-sat)
