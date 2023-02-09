(declare-fun c () Real)
(assert (forall ((d Real)) (= (= d 0) (= 0 (/ c c)))))
(assert (= 0 (* c c)))
(check-sat)
