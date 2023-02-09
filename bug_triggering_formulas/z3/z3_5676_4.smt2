(declare-fun a () String)
(assert (= 1 (str.len (str.substr a 0 (- (str.len a) 1)))))
(assert (or (= "" (str.at a 0)) (= 0 (* (ite (= "" a) 1 0) (ite (= "" (str.at (str.substr a 0 (div 0 (- 1 (str.len (str.substr a 0 (- (str.len (str.substr a 0 (* (str.len a) (ite (= "" (str.substr a 0 1)) (str.len a) 0)))) 1)))))) 0)) 1 0)))))
(check-sat)
