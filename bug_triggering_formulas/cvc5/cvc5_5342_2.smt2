(declare-fun i0 () Int)
(declare-fun st7 () (Set Int))
(assert (>= 0 (* i0 i0)))
(check-sat)
(assert (distinct i0 (card st7)))
(check-sat)
