(declare-fun i0 () Int)
(assert (> 35 i0))
(assert (= 1 (abs i0)))
(assert (> i0 0))
(check-sat)
