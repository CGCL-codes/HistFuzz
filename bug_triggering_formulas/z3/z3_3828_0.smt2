(declare-const v0 Bool)
(declare-const i1 Int)
(declare-const i2 Int)
(declare-const i4 Int)
(declare-const i6 Int)
(declare-const i7 Int)
(declare-const i11 Int)
(declare-const v1 Bool)
(declare-const v2 Bool)
(assert (not (forall ((q2 Bool) (q3 Bool)) (and v2 v2 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v2 v0 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v0))))
(assert (not (forall ((q4 Bool) (q5 Int)) (and v2 v2 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v2 v0 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v0))))
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const v6 Bool)
(declare-const i14 Int)
(assert (not (forall ((q6 Int) (q7 Int) (q8 Int)) (distinct 26 36 36 1 58))))
(declare-const v8 Bool)
(assert (exists ((q9 Int) (q10 Bool)) (not (and q10 (not v2) q10))))
(declare-const v9 Bool)
(assert (not (exists ((q11 Int) (q12 Int)) (> (abs 36) 6 76 36))))
(assert (not (forall ((q13 Bool)) (not (or q13 (not v0) q13 q13 (not v2) q13 (distinct i4 i7 (abs i2) 29 (abs 36)) (and (and v2 v2 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v2 v0 v0 (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v0) v4))))))
(declare-const v10 Bool)
(assert (or (= (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v8 v0 v0) (= (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v8 v0 v0) (= (or (distinct 26 36 36 1 58) v1 v0 (distinct 26 36 36 1 58) v0 (distinct 26 36 36 1 58) v0) v8 v0 v0)))
(check-sat)
