(declare-fun _substvar_1111_ () Bool)
(declare-const v2 Bool)
(declare-const i0 Int)
(declare-const i5 Int)
(declare-const i8 Int)
(declare-const i12 Int)
(declare-const i13 Int)
(assert (or (distinct i5 0) v2 v2))
(assert (> (- 0 91 (- i12) i13 773) 0))
(assert (or _substvar_1111_ (>= 0 (mod (- i12) 91))))
(check-sat)
