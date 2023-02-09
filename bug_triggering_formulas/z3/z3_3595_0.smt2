(declare-fun x () Real)
(assert (and (> x (/ 16.0 5.0)) (< x (/ 127.0 10.0))))
(check-sat)
