(declare-fun a () Int)
(declare-fun b () Int)
(assert (> (+ (* (- a) (/ 6 b))) 9))
(check-sat)
