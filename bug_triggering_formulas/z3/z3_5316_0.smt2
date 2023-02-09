(declare-const v Bool)
(assert (= v (distinct 0.0 (/ 1.0 0.0))))
(assert (= v (= 0.0 (/ 1.0 0.0))))
(check-sat)
