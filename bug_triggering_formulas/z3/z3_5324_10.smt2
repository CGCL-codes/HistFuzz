(declare-fun q (Int) Bool)
(assert (forall ((x Int)) (forall ((z Int)) (or (q z) (= z 1)))))
(check-sat)
