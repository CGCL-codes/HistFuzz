(declare-fun i () Int)
(assert (= 0 ((_ iand 1) 1 i)))
(check-sat)
