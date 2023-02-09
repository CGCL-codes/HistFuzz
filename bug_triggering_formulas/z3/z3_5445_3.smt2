(assert (forall ((x Int) (y Int)) (not (= y (* 2 x)))))
(check-sat)
