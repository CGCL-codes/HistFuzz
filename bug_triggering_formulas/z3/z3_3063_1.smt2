(declare-fun a () String)
(assert (= (str.substr a 0 1) ""))
(assert (distinct (str.substr a 1 1) "*"))
(check-sat)
