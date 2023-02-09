(declare-fun s () String)
(assert (< (str.to.int s) 2))
(check-sat)
