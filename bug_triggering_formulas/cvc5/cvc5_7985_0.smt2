(declare-fun r7 () Real)
(assert (and (= 1.0 (/ 1 0.0)) (= (/ 1 0.0) (* r7 (+ r7 1.0)))))
(check-sat)
