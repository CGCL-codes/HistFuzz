(declare-fun e (Int) Int)
(assert (not (forall ((c Int) (d Int) (h Int)) (= (g h 0 c) (g c c d) c))))
(check-sat)
