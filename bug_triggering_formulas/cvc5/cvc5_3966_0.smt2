(declare-sort S0 0)

(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v2 Bool)
(declare-const v3 Bool)
(declare-const i0 Int)
(declare-const i1 Int)
(declare-const i2 Int)
(declare-const i4 Int)
(declare-const i5 Int)
(declare-const i9 Int)
(declare-const i10 Int)
(declare-const i12 Int)
(declare-const i13 Int)
(assert v0)
(declare-const v4 Bool)
(assert (xor v2 v1 (> i12 i2) (and v3 v3) (> i12 i2) v4 v2 v1 v0 v3))
(assert (xor (<= 52 (div 15 (- i1 84 i0 99 i5))) v4 (=> v4 (>= i5 88)) (> i12 i2) (and v3 v3) (<= 52 (div 15 (- i1 84 i0 99 i5))) v1 (> i12 i2) (distinct i0 615) v0))
(check-sat)
