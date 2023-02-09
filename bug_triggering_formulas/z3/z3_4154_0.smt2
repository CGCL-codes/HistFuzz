(declare-fun a () String)
(assert (= (str.len a) 0))
(check-sat (= a ""))
(check-sat)
