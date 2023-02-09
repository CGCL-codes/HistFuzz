(declare-fun a () String)
(assert (= (str.len (str.substr a 0 (- (str.len a) 20))) 10))
(assert (>= (str.indexof a "A" 0) (- 1)))
(check-sat)
