(declare-fun a () String)
(assert (= (str.substr a 0 (str.indexof (str.substr a 0 (- (str.len a) 1)) "A" 0)) "B"))
(assert (= (str.at a (- (str.len a) 1)) "C"))
(check-sat)
