(declare-const v0 Bool)
(declare-const v1 Bool)
(declare-const i0 Int)
(declare-const i9 Int)
(declare-const i11 Int)
(push)
(push)
(declare-const v3 Bool)
(push)
(assert (< i9 16))
(declare-const v4 Bool)
(declare-const v5 Bool)
(push)
(declare-const v6 Bool)
(assert v5)
(assert (or v1 v0 v0 (and v1 (= (< i9 16) (< i9 16) v1 v3) v3 v0 (= (< i9 16) (< i9 16) v1 v3) v0 v4 v4 v1) v5 (and v1 (= (< i9 16) (< i9 16) v1 v3) v3 v0 (= (< i9 16) (< i9 16) v1 v3) v0 v4 v4 v1) (= 762 (mod 16 16)) v6))
(pop)
(assert (and (= (< i9 16) (< i9 16) v1 v3) (= (< i9 16) (< i9 16) v1 v3) v4 (< i9 16) v4 (< i9 16) v2 v3 v0 (< i9 16) v0))
(assert (< (div i11 0) (abs i9)))
(assert (< i9 16))
(assert (= (< i9 16) (< (div i11 0) (abs i9))))
(check-sat)
