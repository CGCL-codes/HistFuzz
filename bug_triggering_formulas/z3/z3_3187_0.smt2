(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (<= (+ (* 1 c) (* 4 b)) 0.8))
(assert (> (* 3 a a) (- (* c 13) 3) 0))
(check-sat)
