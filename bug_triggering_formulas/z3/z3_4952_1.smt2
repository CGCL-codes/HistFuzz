(declare-fun i () Int)
(declare-fun i4 () Int)
(assert (= 1 (mod (- (* i4 i 2 i4)) (* i4 2 i))))
(check-sat)
