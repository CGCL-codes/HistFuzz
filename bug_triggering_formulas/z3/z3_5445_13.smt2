(declare-const x Bool)
(declare-fun n () Real)
(assert (and (forall ((j Real)) (and x (> 1.0 (+ j (* j (- n))))))))
(check-sat)
