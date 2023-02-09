(declare-fun s () String)
(assert (= (str.to.int s) 10))
(assert (= (str.len s) 1))
(check-sat)
