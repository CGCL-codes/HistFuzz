(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (exists ((d Int)) (> (/ (+ d 2) (+ 0.5 (ite (distinct d a) b c))) 1)))
(check-sat)
