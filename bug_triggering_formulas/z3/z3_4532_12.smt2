(declare-fun a () Int)
(assert (= (/ (* 2 a) 0) (div 0 a) 1))
(check-sat)
