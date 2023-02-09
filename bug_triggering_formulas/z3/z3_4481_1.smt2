(declare-fun a () String)
(assert (= (str.indexof a "A" 1) 1))
(check-sat)
