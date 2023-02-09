(declare-fun a () String)
(assert (= (str.at (str.substr (str.substr a 1 (- (str.len a) 1)) 1 (- (str.len (str.substr a 1 (- (str.len a)))) 1)) 0) "\f"))
(check-sat)
