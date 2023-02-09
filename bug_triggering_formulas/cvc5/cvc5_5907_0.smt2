(declare-fun v9 () Bool)
(assert false)
(check-sat)
(assert (forall ((q1227 Int)) (or (= q1227 0) (= (= q1227 0) (= v9 (forall ((q552 Int)) (= 0 q552)))))))
