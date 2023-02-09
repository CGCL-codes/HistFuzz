(declare-fun a () String)
(declare-fun b () String)
(assert (= (ite (> (str.to_code a) 0) a b) ""))
(check-sat)
