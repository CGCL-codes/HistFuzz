(declare-fun s () String)
(declare-fun t () String)
(assert (= t (str.substr s 0 (- (str.len s) 1))))
(assert (str.contains (str.substr t 0 (- (str.len s) 1 (str.indexof t "a" 0))) "a"))
(assert (str.contains t "a"))
(assert (= (str.indexof s "=" 0) 0))
(check-sat)
