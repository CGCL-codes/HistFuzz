(declare-const i4 Int)
(declare-fun st3 () (Set Int))
(declare-fun st7 () (Set Int))
(declare-fun st8 () (Set Int))
(declare-fun st9 () (Set Int))
(declare-fun st12 () (Set Int))
(declare-const i28 Int)
(assert (> (card st12) (abs i28)))
(assert (> (card (union (complement (intersection st7 st3)) st12)) (- (div 578 i4))))
(assert (> (card (setminus (union st9 st8) st9)) (mod (abs i28) 35)))
(check-sat)
