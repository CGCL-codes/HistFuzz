(declare-fun value2 () String)
(assert (and (>= (- (str.len value2) 1) 0) (= "\u{a}" (str.at value2 (- 1 (- (str.len value2) 1)))) (= 0 (ite (= " " (str.at value2 (- (str.len value2) (ite (= "" (str.at value2 0)) 1 0)))) 1 0)) (= (ite (= 1 (str.indexof value2 "=")) 1 0) (ite (str.contains value2 (str.at (str.substr value2 0 (str.to_code ",")) 0)) 1 0)) (not (= 0 (ite (= "" (str.at value2 (abs (str.len value2)))) 1 0)))))
(check-sat)
