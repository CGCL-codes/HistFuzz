(declare-fun s () String)
(assert (distinct s "AA"))
(assert (> (str.indexof s "A" 20) 0))
(check-sat)
