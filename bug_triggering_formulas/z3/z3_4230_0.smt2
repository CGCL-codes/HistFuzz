(declare-const r2 Real)
(declare-const r0 Real)
(declare-const r1 Real)
(assert (= (* r0 r0 r0 r1) (- 0.0 (/ 0.0 r1) r2 (* r0 r0 r0 r1)) r0 3.0))
(check-sat)
