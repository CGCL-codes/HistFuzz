(declare-fun a~b~0 () Int)
(assert (forall ((d Int) (c Int)) (not (= (mod (+ (* 4) d (* 2 c)) 6) a~b~0 c))))
(check-sat)
