(declare-fun r () Real)
(assert (or (forall ((R Real)) (and (< 0.0 (exp 1.0)) (= (exp 0.0) (/ r 0.0)) (= 0.0 (/ (exp 0.0) 0.0))))))
(check-sat)
