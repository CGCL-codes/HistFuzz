(declare-const v5 Bool)
(declare-const r1 Real)
(declare-const v17 Bool)
(declare-const r2 Real)
(push)
(assert (or v17 (> r2 (- r1) (/ r1 0.0) (* r1 (- r1) r1 20.0) 0.0) v5))
(check-sat)
