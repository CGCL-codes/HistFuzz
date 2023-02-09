(declare-fun s () String)
(assert (or (= s "0") (= s "1")))
(assert (> (str.to.int s) 1))
(check-sat)
