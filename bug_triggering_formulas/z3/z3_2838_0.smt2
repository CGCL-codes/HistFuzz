(declare-fun a () String)
(assert (and (= (ite (= (str.at (str.substr a (+ (str.indexof a "=" 0) 1) (- (str.len a) (+ (str.indexof a "=" 0) 1))) (- (str.len (str.substr a (+ (str.indexof a "=" 0) 1) (- (str.len a) (+ (str.indexof a "=" 0) 1)))) 1)) "") 1 0) 0) (not (= (ite (= (str.at (str.substr a (- (str.indexof a "=" 0) 1) (- (str.len a) (+ (str.indexof a "=" 0) 1))) 0) " ") 1 0) 0))))
(check-sat)
