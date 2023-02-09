(declare-fun y () Int)
(declare-fun x () Int)
(assert (and (= 1 y) (< 1 x)))
(check-sat)
