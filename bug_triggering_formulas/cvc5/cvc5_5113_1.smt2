(declare-fun a () Real)
(assert (= a (exp (- (/ 1 2)))))
(check-sat)
