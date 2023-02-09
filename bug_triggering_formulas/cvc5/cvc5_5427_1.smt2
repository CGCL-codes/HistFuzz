(declare-fun i () Int)
(assert (sep true (pto 1 (+ 1 i))))
(check-sat)
