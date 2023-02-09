(declare-fun C () (Array Bool Int))
(assert (forall ((A1 (Array (Array Int Bool) (Array Bool Int)))) (forall ((B (Array Int Bool))) (forall ((p Bool)) (= C (A1 (store B 1 p)))))))
(check-sat)
