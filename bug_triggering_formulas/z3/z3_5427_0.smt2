(declare-fun x () Real)
(assert (and (> 0.0 x) (= 0.0 (/ 0.0 x))))
(check-sat)
