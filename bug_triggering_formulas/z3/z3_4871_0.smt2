(declare-fun i6 () Int)
(assert (= 1 (mod i6 0)))
(assert (= 0 (mod (mod i6 25) 2)))
(check-sat)
