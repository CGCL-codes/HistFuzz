(declare-fun r3 () Real)
(declare-fun r6 () Real)
(declare-fun r8 () Real)
(assert (and (= 1 (* r8 r3)) (= 1.0 (/ 1 (+ r8 r6)))))
(check-sat)
