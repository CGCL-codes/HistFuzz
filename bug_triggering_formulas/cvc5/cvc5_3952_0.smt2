(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const i3 Int)
(declare-const i4 Int)
(declare-const i5 Int)
(declare-const i7 Int)
(declare-const i8 Int)
(declare-const i10 Int)
(declare-const i11 Int)
(declare-const i13 Int)
(declare-const i15 Int)
(declare-const i16 Int)
(declare-const i17 Int)
(push)
(assert (< i15 i8))
(declare-const v6 Bool)
(assert (distinct (not v5) v0 v4 (or v1 v2 v0 v5) v2 v1 v6 v6 v2))
(push)
(declare-const v7 Bool)
(declare-const i18 Int)
(push)
(declare-const v8 Bool)
(assert (distinct (not v5) v0 v4 (or v1 v2 v0 v5) v2 v1 v6 v6 v2))
(declare-const v9 Bool)
(declare-const i19 Int)
(assert (xor (<= (- i4 i3 i10 i7) 65) (not v5) (and (<= i18 i11) v6 (distinct v6 (or v1 v2 v0 v5) (< i15 i8) v3 v2 v1 (< i15 i8) v6 v3 v3) (or v1 v2 v0 v5)) v7 (not v5) (= 128 i11)))
(push)
(declare-const v10 Bool)
(assert (=> v9 v1))
(assert (not v5))
(declare-const v11 Bool)
(declare-const i20 Int)
(declare-const i21 Int)
(assert (distinct (not v5) v0 v4 (or v1 v2 v0 v5) v2 v1 v6 v6 v2))
(push)
(assert (= v10 (=> (<= i18 i11) (distinct 67 i18)) v1 v6 (<= (- i4 i3 i10 i7) 65) (xor (<= (- i4 i3 i10 i7) 65) (not v5) (and (<= i18 i11) v6 (distinct v6 (or v1 v2 v0 v5) (< i15 i8) v3 v2 v1 (< i15 i8) v6 v3 v3) (or v1 v2 v0 v5)) v7 (not v5) (= 128 i11)) v8))
(push)
(check-sat)
(push)
(push)
(pop)
(check-sat)
