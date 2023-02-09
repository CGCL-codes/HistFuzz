(declare-fun x () String)
(assert (> (- (str.to_int (str.++ (str.from_int 0) x))) 0))
(check-sat)
