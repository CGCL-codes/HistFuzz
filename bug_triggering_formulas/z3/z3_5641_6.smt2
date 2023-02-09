(declare-fun a () String)
(assert (xor (exists ((b Int)) (= b 0)) (exists ((b Int)) (= (* (+ (str.len a) 1) b) 0))))
(check-sat)
