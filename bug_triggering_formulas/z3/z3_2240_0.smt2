(declare-fun F (Real) Int)
(assert (forall ((u0 Real)) (= 10 (F u0))))
(assert (not (forall ((r Real)) (implies (= (* r r) 0.0) (= r 0.0)))))
(check-sat)
