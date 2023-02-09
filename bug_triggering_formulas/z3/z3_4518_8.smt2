(declare-fun a () String)
(assert (and (str.contains (str.substr a 0 (- (str.len a) 1)) " ") (distinct (str.len (str.substr a 0 (- (str.len a) 1))) 0) (distinct (str.at (str.substr a 0 1) (- (str.len (str.substr a 0 (- (- (str.len a) 1)))) 1)) "A") (distinct (str.at (str.substr a 0 (- (- (str.len a) 1))) 0) "B") (distinct (str.at (str.substr a 0 (- (- (str.len a) 1))) 0) "\n") (= (str.at a (- (str.len a) 1)) "\n") (distinct (str.at a 0) " ")))
(check-sat)
