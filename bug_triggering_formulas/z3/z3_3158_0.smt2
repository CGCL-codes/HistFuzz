(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (exists ((d Int)) (> (/ (+ d 1) (+ 0.5 (ite (distinct d a) b c))) 0)))
(check-sat)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (exists ((d Int)) (> (/ (+ d 1) (+ 0.5 (ite (distinct d a) b c))) 0)))
(check-sat)
