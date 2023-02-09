(declare-const r Real)
(assert (= 1.0 (/ 2 r r)))
(check-sat)
