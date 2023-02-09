(push)
(declare-const k Real)
(assert (and (<= 0.0 k) (not (= k 0.0)) (< k 1.0)))
(check-sat)
