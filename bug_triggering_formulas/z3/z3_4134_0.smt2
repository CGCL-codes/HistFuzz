(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const v4 Bool)
(declare-const v5 Bool)
(declare-const v7 Bool)
(declare-const v9 Bool)
(declare-const v11 Bool)
(declare-const i0 Int)
(declare-const i3 Int)
(push)
(declare-const i4 Int)
(declare-const i5 Int)
(declare-const v21 Bool)
(declare-const i6 Int)
(declare-const i7 Int)
(assert (xor v9 v4 (> 16 i0) v9 v7 v11))
(assert (or (distinct (- 16 216 90 i0 51) 51) (= (mod i0 90) (mod (- 16 216 90 i0 51) 90))))
(assert (or v21 v21 v1))
(assert (< i3 485))
(assert (or v5 (distinct (- 16 216 90 i0 51) 51)))
(assert (or v0 (distinct (- 16 216 90 i0 51) 51)))
(check-sat)
