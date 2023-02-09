(declare-fun a () String)
(assert (not (str.contains (str.replace (str.substr a 0 (- (+ (str.indexof a "B" 0) 1))) "B" "b") "C")))
(check-sat)
