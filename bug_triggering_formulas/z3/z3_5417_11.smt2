(declare-fun x1 () Real)
(assert (forall ((x0 Real)) (and (= 1 (+ (* x0 (- 2)) (* x1 (- 36)))) (= 1 (- (* x0 (- 4)) x1 (* x0 (- 40)))) (or true))))
(check-sat)
