(declare-fun s () String)
(declare-fun i () Int)
(assert (distinct "" (str.substr s i (str.indexof "A" s i))))
(check-sat)
