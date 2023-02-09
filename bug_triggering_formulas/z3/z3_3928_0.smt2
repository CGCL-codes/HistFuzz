(declare-fun a () Int)
(declare-fun b () Int)
(assert (and (not (and (= (+ (* (* b a))) 0))) (>= a 0)))
(check-sat)
