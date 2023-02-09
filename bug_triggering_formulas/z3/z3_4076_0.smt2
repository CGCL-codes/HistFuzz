(declare-fun s2 () Int)
(assert (= s2 (seq.indexof s0 s1 0)))
(check-sat)
