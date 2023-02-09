(declare-fun v8 () Bool)
(declare-fun B () (Array (Array Int Bool) Bool))
(assert (forall ((A (Array (Array Int Bool) Bool))) (exists ((C (Array (Array Int Bool) Bool))) (or v8 (and (= C A) (= A B))))))
(check-sat)
