(declare-sort S0 0)

(declare-sort S1 0)

(declare-sort S1 0)

(declare-sort S1 0)

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
(declare-const i0 Int)
(declare-const i2 Int)
(declare-const i7 Int)
(declare-const i12 Int)
(declare-const i13 Int)
(declare-const i14 Int)
(declare-const i15 Int)
(declare-const v12 Bool)
(assert v8)
(declare-const i16 Int)
(assert v7)
(declare-const v13 Bool)
(assert (not v4))
(assert (xor (not v4) v4 v1 v6 (xor v1 v9 v9 v8 v9)))
(declare-const v14 Bool)
(declare-const v15 Bool)
(assert v9)
(declare-const v16 Bool)
(assert v7)
(push)
(assert (and v8 v11 (<= (mod i12 38) i16) v11))
(declare-const v17 Bool)
(declare-const v18 Bool)
(assert v3)
(declare-const v19 Bool)
(assert v6)
(assert (=> (>= 41 38) (xor v1 v9 v9 v8 v9)))
(assert (not v13))
(pop)
(declare-const S0-0 S0)
(declare-const v20 Bool)
(push)
(assert v9)
(check-sat)
(pop)
(declare-const v22 Bool)
(assert v8)
(declare-const v23 Bool)
(declare-const v24 Bool)
(check-sat)
(push)
(push)
(declare-const v25 Bool)
(declare-const v26 Bool)
(assert (=> (<= (mod i12 38) i16) v10))
(check-sat)
(push)
(declare-const v27 Bool)
(pop)
(declare-const S0-1 S0)
(assert (xor (not v4) v4 v1 v6 (xor v1 v9 v9 v8 v9)))
(check-sat)
