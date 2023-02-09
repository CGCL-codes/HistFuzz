(declare-fun a () Int)
(assert (= (/ 0 (+ a 0.5)) 0))
(check-sat)
