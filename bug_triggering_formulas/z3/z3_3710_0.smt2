(declare-fun a () Real)
(assert (forall ((b Real)) (or (= (/ 1 b) 0) (= a 0))))
(check-sat)
(declare-fun a () Real)
(assert (forall ((b Real)) (or (= (/ 1 b) 0) (= a 0))))
(check-sat)
