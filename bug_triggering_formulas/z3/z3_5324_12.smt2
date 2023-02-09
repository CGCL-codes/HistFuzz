(declare-fun x2 () Int)
(assert (and (< x2 1) (< x2 (- 1))))
(check-sat)
