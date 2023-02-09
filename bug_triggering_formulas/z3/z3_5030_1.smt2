(assert (= (str.len "\u{0000}") 1))
(check-sat)
(assert (= (str.len "\u0000") 1))
(check-sat)
