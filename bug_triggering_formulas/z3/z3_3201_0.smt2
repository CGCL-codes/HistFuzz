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
(declare-const v11 Bool)
(declare-const v12 Bool)
(declare-const v13 Bool)
(declare-const v14 Bool)
(declare-const v15 Bool)
(declare-const r0 Real)
(declare-const r2 Real)
(declare-const r3 Real)
(declare-const r4 Real)
(assert (distinct r0 0.79 r2))
(declare-const v16 Bool)
(declare-const v17 Bool)
(declare-const r6 Real)
(assert (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14))
(declare-const v18 Bool)
(declare-const v19 Bool)
(assert (or (distinct r4 r6 (- r0) r6 r0) v14 v5 v9 v14 (distinct r0 0.79 r2)))
(declare-const v20 Bool)
(assert (xor (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14) v17 v10 (or v1 (distinct r0 0.79 r2) v12 v12) v19 v10 (distinct v4 v16) (or v1 (distinct r0 0.79 r2) v12 v12) (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14)))
(assert v5)
(assert (xor (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14) v17 v10 (or v1 (distinct r0 0.79 r2) v12 v12) v19 v10 (distinct v4 v16) (or v1 (distinct r0 0.79 r2) v12 v12) (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14)))
(declare-const r7 Real)
(assert (forall ((q0 Real) (q1 Real) (q2 Real) (q3 Bool)) (not (< 0.164224996 (* 16165 r4 (- r4) r0) r6 0.164224996 q0))))
(assert (= (or v1 (distinct r0 0.79 r2) v12 v12) (or (distinct r4 r6 (- r0) r6 r0) v14 v5 v9 v14 (distinct r0 0.79 r2)) (xor (not v0) v5 v1 v9 v9 v8 v2 v4 v14)))
(declare-const v21 Bool)
(declare-const r8 Real)
(assert (xor (=> v16 (<= r6 r2 0.79 r0 16165)) (<= r6 r2 0.79 r0 16165) (<= r6 r2 0.79 r0 16165) v11 v4))
(declare-const r9 Real)
(assert (and (not v6) (xor (=> v16 (<= r6 r2 0.79 r0 16165)) (<= r6 r2 0.79 r0 16165) (<= r6 r2 0.79 r0 16165) v11 v4) (<= r6 r2 0.79 r0 16165) (=> v16 (<= r6 r2 0.79 r0 16165)) (and (or (distinct r4 r6 (- r0) r6 r0) v14 v5 v9 v14 (distinct r0 0.79 r2)) v3 v14 v3) v10 (not v0) (distinct (- r0) (* 16165 r4 (- r4) r0) (- r4) r6) v2))
(check-sat)
