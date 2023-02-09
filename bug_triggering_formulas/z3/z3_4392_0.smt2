(declare-fun a () String)
(assert (= (str.at (str.substr (str.substr (str.substr a 1 (- (str.len a) 1)) 1 (- (str.len (str.substr a 1 (- (str.len a) 1))) 1)) 0 (- (- (str.len (str.substr (str.substr a 1 (- (str.len a) 1)) 1 (- (str.len (str.substr a 1 (- (str.len a) 1))) 1))) 1) 0)) 0) "a"))
(assert (not (= (str.at (str.substr (str.substr a 1 (- (str.len a) 1)) 1 (- (str.len (str.substr a 1 (- (str.len a) 1))) 1)) 0) "a")))
(check-sat)
