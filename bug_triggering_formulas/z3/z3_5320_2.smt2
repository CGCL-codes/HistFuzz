(declare-const v Bool)
(assert (= v (= 0.0 (/ 1.0 0.0))))
(assert (not (= v (= 0.0 (/ 1.0 0.0)))))
(check-sat)
