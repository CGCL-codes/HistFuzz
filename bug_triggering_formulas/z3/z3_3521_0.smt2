(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v3 Bool)
(declare-const v5 Bool)
(declare-const v8 Bool)
(declare-const v9 Bool)
(declare-const v10 Bool)
(declare-const v11 Bool)
(declare-const v12 Bool)
(declare-const v13 Bool)
(declare-const i0 Int)
(declare-const i2 Int)
(declare-const i4 Int)
(declare-const i5 Int)
(declare-const i7 Int)
(declare-const i12 Int)
(declare-const v16 Bool)
(assert (or v12 (> i5 82) (not (or v5 v13 (not v9)))))
(assert (or v16 v3 (<= i4 i7)))
(assert (or v12 v12 (not (or v5 v13 (not v9)))))
(assert (or (not (or v5 v13 (not v9))) (distinct (not (or v5 v13 (not v9))) (distinct i12 16)) v16))
(check-sat)
