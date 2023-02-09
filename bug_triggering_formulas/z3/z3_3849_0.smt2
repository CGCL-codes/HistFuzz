(assert (forall ((a Bool) (b Bool) (c Int) (d Int)) (= d (ite (= a b) 0 (ite (= c 0) (+ c 1) c)))))
(check-sat)
