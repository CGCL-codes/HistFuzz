(declare-fun z () Int)
(assert (forall ((y Int)) (=> (and (> y (- 5)) (< y 5)) (> (+ y z) 10))))
(check-sat)
