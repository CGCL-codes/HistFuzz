(declare-const r1 Real)
(declare-const r19 Real)
(assert (and (distinct 0.0 r1) (= 0.0 0.0 (/ r1 r19) (- (/ 0.0 0.0) 65.0))))
(check-sat)
