(declare-fun a () Real)
(assert (exists ((b Real)) (forall ((c Real)) (exists ((d Real)) (>= (* (ite (exists ((b Real)) (forall ((c Real)) (exists ((d Real)) (< (+ (* 68 c) a) 0 (* d b))))) (* 68 c) 3) (/ 2 (* 2 d)) d 2 b d) 1)))))
(check-sat)
