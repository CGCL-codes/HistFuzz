(declare-fun s () String)
(assert (not (=> (and (>= l 0) (< l 10)) (= (str.len s) 1))))
(check-sat)
