(declare-const v0 Bool)
(declare-const v3 Bool)
(declare-const v5 Bool)
(declare-const v8 Bool)
(declare-const v13 Bool)
(declare-const r0 Real)
(declare-const r1 Real)
(declare-const r2 Real)
(declare-const r3 Real)
(declare-const r5 Real)
(declare-const r6 Real)
(declare-const v16 Bool)
(assert (or (<= (+ r0 r2 r2 (- r1) r3) r0 r2 (* r0 r1 r2))))
(assert (or (= r6 66991.0 r2 r3)))
(assert (or v16 v8 (= r6 66991.0 r2 r3)))
(assert (or (xor v8 (=> v3 (< r0 r2 r0)) (= r0 r1 r2 (- r1) r3) v0 v5 (distinct r2 r2) v13) v16))
(check-sat)
