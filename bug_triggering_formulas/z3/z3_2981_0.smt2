(declare-fun s () String)
(assert (> (str.to.int s) 1))
(check-sat)
