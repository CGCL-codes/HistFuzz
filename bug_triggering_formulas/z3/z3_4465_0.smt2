(declare-fun x0 () Real)
(declare-fun x1 () Real)
(assert (<= x0 (/ 11 6)))
(assert (<= x1 (/ 2 3)))
(assert (<= (+ (* (/ 1 3) x0) (* (/ 2 3) x1)) (/ 8 9)))
(assert (<= (+ (* (/ 2 5) x0) (* (/ 3 5) x1)) (/ 37697483821051.0 35184372088832.0)))
(check-sat)
