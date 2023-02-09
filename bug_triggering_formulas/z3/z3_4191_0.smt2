(declare-const i1 Int)
(declare-const i5 Int)
(assert (distinct 55 i1 0 (mod 28 0) i5))
(check-sat)
