(declare-const i1 Int)
(declare-const i2 Int)
(push)
(assert (>= (div 63 (div i2 (* i1 67 i2))) 63))
(assert (< 67 i2))
(check-sat)
