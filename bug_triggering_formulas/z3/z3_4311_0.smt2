(declare-fun a () String)
(assert (str.contains (str.substr a 0 (- (str.len a) (str.indexof a "x" 0))) "y"))
(assert (str.contains (str.substr a 0 (- (str.indexof a "x" 0) 0)) "z"))
(check-sat)
