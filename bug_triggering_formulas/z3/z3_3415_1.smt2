(declare-fun a!0 () Int)
(declare-fun bb!2 () Int)
(assert (not (<= (+ (* 192 bb!2) (* (- 13) a!0)) (- 13))))
(check-sat)
