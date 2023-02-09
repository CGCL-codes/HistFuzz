(declare-fun a () String)
(assert (let ((b (str.substr a 1 (- (+ (str.indexof a "" 20) 1))))) (let ((c (str.indexof a "*" 0))) (let ((d (str.substr a (+ c 1) (- c)))) (and (= (str.len b) 0) (not (str.contains d "*")) (> c 1) (< (str.len a) 20))))))
(check-sat)
