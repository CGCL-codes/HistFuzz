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
(declare-const r3 Real)
(declare-const r5 Real)
(assert (=> v14 v11))
(push)
(pop)
(declare-const v15 Bool)
(declare-const v16 Bool)
(assert v7)
(check-sat)
(assert (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))))
(declare-const v17 Bool)
(assert (xor (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))) (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) (= (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) v2 (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) v0 (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v3 v2 v9) v9 (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v8))
(declare-const v18 Bool)
(declare-const r6 Real)
(push)
(assert v3)
(check-sat)
(assert (= (xor (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v0 v11 (=> (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v4) (> (/ 0.0 0.0) 26460587.0 449751656.8 (- r3 26460587.0 1013.0 1013.0 0.12) 449751656.8) (or v9 v12) v16 v14 (distinct 0.12 (- r3 26460587.0 1013.0 1013.0 0.12) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))) v1) (or v9 v12) v1 (=> v14 v11) v4 (distinct 0.12 (- r3 26460587.0 1013.0 1013.0 0.12) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))))))
(pop)
(push)
(pop)
(assert (not v3))
(declare-const v19 Bool)
(assert v19)
(push)
(push)
(assert (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))))
(push)
(assert (exists ((q0 Real) (q1 Real) (q2 Bool)) (=> (not (not v3)) (< 26460587.0 26460587.0 q1 0.784576 1013.0))))
(pop)
(declare-const r7 Real)
(declare-const v20 Bool)
(declare-const v21 Bool)
(declare-const v22 Bool)
(assert (and v8 v10 (= (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) v2 (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) v0 (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v3 v2 v9) v1 v10 (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))) (distinct 0.12 (- r3 26460587.0 1013.0 1013.0 0.12) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))))))
(declare-const v23 Bool)
(assert (not (xor v17 (=> (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v4) v7 v14 (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))) v6)))
(declare-const v24 Bool)
(assert (and (=> (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v4) v9 v15))
(push)
(assert v18)
(declare-const v25 Bool)
(assert (= v21 v11 (=> v14 v11)))
(declare-const v26 Bool)
(check-sat)
(assert (=> v13 (or v12 (=> (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v4))))
(declare-const v27 Bool)
(assert v6)
(pop)
(push)
(declare-const r8 Real)
(assert (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))))
(declare-const v28 Bool)
(pop)
(declare-const v29 Bool)
(declare-const v30 Bool)
(declare-const v31 Bool)
(declare-const r9 Real)
(assert (forall ((q3 Real) (q4 Bool) (q5 Bool)) (=> (> q3 q3 q3 (- r3 26460587.0 1013.0 1013.0 0.12) r9) (distinct q5 q5 (not (not v3)) (not v3) q4 v19 v7 (distinct 0.12 (- r3 26460587.0 1013.0 1013.0 0.12) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))) (/ 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12))))))))
(assert (=> v4 (xor v17 (=> (= v3 v11 v9 v8 v6 v11 v10 v8 v7 v11) v4) v7 v14 (xor v4 v1 v6 v5 (or v9 v12) v4 (not v3) (distinct (/ 0.0 0.0) 26460587.0 (/ 0.0 (- r3 26460587.0 1013.0 1013.0 0.12)))) v6)))
(declare-const v32 Bool)
(assert (=> v29 (not (=> v5 v10))))
(declare-const r10 Real)
(assert (exists ((q6 Real)) (not (<= q6 0.784576 44110.0))))
(check-sat)
(pop)
(check-sat)
