(declare-fun v () String)
(assert (= "" (str.substr v 0 1)))
(check-sat)
