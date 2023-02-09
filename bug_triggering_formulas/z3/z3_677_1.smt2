(declare-const k!2 Int)
(assert (and (>= (to_real k!2) (/ 131075.0 6.0)) (not (>= (to_real k!2) (/ 131081.0 6.0)))))
(check-sat)
