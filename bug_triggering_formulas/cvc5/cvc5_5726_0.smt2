(declare-fun r0 () Real)
(declare-fun r1 () Real)
(assert (and (not (<= (* r1 (* r1 (* r1 (* r1 (* r1 r1))))) 0)) (not (<= (* r0 (* r0 (- r0 (+ r0 (* r0 (* r0 (+ (* r1 (- r1 (/ 1 720))) (* r0 r0)))))))) 0))))
(check-sat)
