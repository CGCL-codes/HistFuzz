(assert (forall ((x Int) (y Int) (z Int)) (= x (/ 1 y z (- 128 z 1)))))
(check-sat)
