(declare-fun a () String)
(assert (= (ite (str.contains (str.++ (str.replace (str.substr (str.substr (str.substr a 0 (- (+ (str.indexof a "C" 0) 1))) 0 (- (+ (str.indexof (str.substr a 0 (- (+ (str.indexof a "C" 0) 1))) "C" 0) 1))) 0 1) "C" "c") "") "D") 1 0) 0))
(check-sat)
