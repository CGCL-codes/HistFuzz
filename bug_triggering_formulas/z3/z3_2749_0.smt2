(declare-fun a () Real)
(assert (and (forall ((b Real)) (= (/ (/ 0 (- b)) 0) 0)) (< (/ 1 0 a) 1)))
(assert (forall ((c Real)) (forall ((d Real)) (forall ((e Real)) (forall ((f Real)) (and (= (* e f) 0) (= (* d (/ 0 c) (/ 0 e)) 0)))))))
(check-sat)
