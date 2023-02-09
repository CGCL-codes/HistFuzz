(declare-const r1 Real)
(declare-const r3 Real)
(assert (exists ((q0 Bool) (q1 Real)) (= 0.0 0.0 (- (+ r3 r1) (+ r3 r1) 0.0 (/ r1 0.0) 0.0) 0.0 0.0)))
(check-sat)
