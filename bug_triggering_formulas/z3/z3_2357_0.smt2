(declare-fun source (Int Real) Bool)
(assert (forall ((x Int)) (=> (= x 1) (source x 20.0))))
(assert (forall ((x Int)) (=> (= x 2) (source x 0.0))))
(check-sat)
