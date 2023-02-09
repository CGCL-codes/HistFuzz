(declare-const s String)
(assert (and (> (str.len s) 40) (= (str.at s 0) "a")))
(check-sat)
