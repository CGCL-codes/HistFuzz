(declare-fun a () String)
(declare-fun b () String)
(assert (= b (str.substr a 1 (- (str.len a) 1))))
(assert (str.contains (str.substr b 0 (- (str.len b) 1)) "A"))
(assert (= (str.at b (- (str.len b) 1)) "B"))
(assert (distinct (str.at b 0) "A"))
(check-sat)
