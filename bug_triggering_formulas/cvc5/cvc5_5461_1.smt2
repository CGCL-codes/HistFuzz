(declare-fun x () Int)
(declare-fun y () Int)
(assert (< y 0))
(assert (> ((_ iand 1) x y) 0))
(check-sat)
