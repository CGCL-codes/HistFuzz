(declare-fun s () String)
(assert (not (= "A" (str.substr (str.update "AA" 1 s) 1 1))))
(check-sat)
