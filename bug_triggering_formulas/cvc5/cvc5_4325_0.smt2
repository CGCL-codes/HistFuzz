(declare-fun b (Real) Int)
(assert (forall ((c Real)) (> 0 (b c))))
(assert (forall ((c Real) (d Int)) (<= c d (b c))))
(check-sat)
