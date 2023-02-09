(declare-fun i () Int)
(assert (< i 1))
(assert (= (int.to.str i) "00"))
(check-sat)
