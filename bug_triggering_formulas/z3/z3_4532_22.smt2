(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(assert (forall ((d Real)) (exists ((e Real)) (and (=> true (=> (>= (* (/ (- 1) b) d d) c) (<= d a))) (> b 0)))))
(check-sat)
