(declare-fun a () Real)
(declare-fun b () Real)
(assert (forall ((c Real)) (or (<= (/ 0 (/ (/ (/ 1 a b) 0) 0)) 0) (<= 0 (/ 0 0)))))
(assert (> a 0))
(check-sat)
