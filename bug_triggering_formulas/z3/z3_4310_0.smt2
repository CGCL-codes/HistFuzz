(declare-fun s () String)
(assert (not (= (str.at (str.substr s 0 (- (str.len s) 1)) 0) (str.at s 0) "a")))
(check-sat)
