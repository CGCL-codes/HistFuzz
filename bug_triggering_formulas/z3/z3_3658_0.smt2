(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const v6 Bool)
(declare-const v7 Bool)
(declare-const v8 Bool)
(declare-const v9 Bool)
(declare-const v10 Bool)
(declare-const r1 Real)
(declare-const r3 Real)
(declare-const r4 Real)
(declare-const r10 Real)
(declare-const r14 Real)
(declare-const v11 Bool)
(declare-const r15 Real)
(declare-const r16 Real)
(declare-const v12 Bool)
(declare-const r17 Real)
(declare-const r18 Real)
(declare-const v13 Bool)
(declare-const r20 Real)
(declare-const v14 Bool)
(declare-const r21 Real)
(assert (or (xor (= 468.0 r10 r4) v10 v8 v1 (>= 17982586.0 468.0 17982586.0 r10 0.1239) v7 v2) (distinct 87.0 r16) v8))
(assert (or (= 468.0 r10 r4) v6 (xor (= 468.0 r10 r4) v10 v8 v1 (>= 17982586.0 468.0 17982586.0 r10 0.1239) v7 v2)))
(assert (or v1 v2 v2))
(assert (or (<= r4 0.1239 17982586.0 r1 r14) (<= r4 0.1239 17982586.0 r1 r14) (>= 0.1239 r16 r3 r15)))
(assert (or (xor (= 468.0 r10 r4) v10 v8 v1 (>= 17982586.0 468.0 17982586.0 r10 0.1239) v7 v2) v2 (= 468.0 r10 r4)))
(assert (or (<= r4 0.1239 17982586.0 r1 r14) (or v12 (= 468.0 r10 r4) (distinct 87.0 r16) v1 v10 (> r16 r16) v5 v5 (not v7) v5) (>= 0.1239 r16 r3 r15)))
(assert (or (not v0) (xor (= 468.0 r10 r4) v10 v8 v1 (>= 17982586.0 468.0 17982586.0 r10 0.1239) v7 v2) (distinct 87.0 r16)))
(assert (or (xor (>= 17982586.0 468.0 17982586.0 r10 0.1239) (xor (= 468.0 r10 r4) v10 v8 v1 (>= 17982586.0 468.0 17982586.0 r10 0.1239) v7 v2) (not v0) v2 (distinct 87.0 r16) v4 v11) (<= r4 0.1239 17982586.0 r1 r14) (not v0)))
(check-sat)
