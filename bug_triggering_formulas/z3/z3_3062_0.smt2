(declare-fun a () String)
(assert (let ((b (str.substr a 10 (str.len a)))) (let ((c (str.substr a 0 (- (str.len b) (+ (str.indexof b "z" 0) 1))))) (and (= (str.len c) 0) (str.prefixof "yyyz" a) (str.contains a "z")))))
(check-sat)
