(declare-fun a () String)
(assert (= (str.len (str.substr (str.substr a 1 (- (str.len a) 1)) 1 (- (str.len a) 1))) 1))
(check-sat)
