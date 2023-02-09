(declare-fun y () Int)
(assert (= 0 ((_ iand 1) y 1)))
(check-sat)
