(declare-fun a () String)
(assert (not (= "" (str.substr a 0 1))))
(assert (= "" (str.substr a 1 1)))
(check-sat)
