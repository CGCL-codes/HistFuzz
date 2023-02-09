(declare-fun a () String)
(assert (= (str.to_code a) 0))
(check-sat)
