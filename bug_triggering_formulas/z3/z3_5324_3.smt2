(declare-const x Real)
(assert (= 0 (* (/ 0 0) (/ 0 (- 1.0) (* x x)))))
(check-sat)
