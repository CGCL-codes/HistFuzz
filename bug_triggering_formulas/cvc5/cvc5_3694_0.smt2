(declare-fun a () Real)
(assert (> a 0))
(assert (<= (+ (exp (- (+ (/ 4 3) a))) (exp (/ (- 10) a))) 20))
(check-sat)
