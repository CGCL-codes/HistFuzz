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
(declare-const i0 Int)
(declare-const i1 Int)
(declare-const i3 Int)
(declare-const i5 Int)
(declare-const i6 Int)
(declare-const i8 Int)
(declare-const i9 Int)
(declare-const i15 Int)
(declare-const i16 Int)
(declare-const i18 Int)
(declare-const i20 Int)
(declare-const v13 Bool)
(declare-const v14 Bool)
(declare-const v15 Bool)
(assert (forall ((q0 Bool)) (not (=> q0 v1))))
(declare-const v16 Bool)
(declare-const v17 Bool)
(assert (exists ((q1 Bool) (q2 Int)) (= v6 v14 v3 v0 v12 v6)))
(declare-const v18 Bool)
(assert (not (exists ((q3 Bool) (q4 Int) (q5 Int) (q6 Bool)) (not (> q5 q5)))))
(assert (or (and v15 v12) v11 v6))
(assert (or v11 v2 v2))
(assert (or (and v15 v12) (distinct 50 0) (distinct 50 0)))
(assert (or v16 v2 v4))
(check-sat)
