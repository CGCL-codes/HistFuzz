(declare-fun a () Real)
(declare-fun b () Real)
(assert (= (= (/ (+ a a) 0) (/ b 0)) (= a 1)))
(check-sat)
