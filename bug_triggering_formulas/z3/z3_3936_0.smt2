(declare-fun a () Real)
(declare-fun b (Real) Bool)
(assert (= (<= a 2.0) (= (b (- a 1.0)) (b 2.0))))
(check-sat)
