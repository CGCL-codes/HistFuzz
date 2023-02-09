(declare-fun a () String)
(assert (and (and (not (= (ite (str.contains (str.replace (str.substr a 0 (+ (str.indexof a "A" 0) 1)) "A" "") "O") 1 0) 0))) (= (ite (str.contains (str.substr a 0 1) "G") 1 0) 0)))
(check-sat)
