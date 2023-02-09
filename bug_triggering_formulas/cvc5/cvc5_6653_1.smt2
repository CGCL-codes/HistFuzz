(declare-fun s () String)
(assert (not (= "A" (str.substr (str.update "AAAAAA" 1 s) 5 1))))
(check-sat)
