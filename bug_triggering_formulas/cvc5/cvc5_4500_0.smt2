(declare-fun s () String)
(assert (= s (str.from_code 1)))
(check-sat)
