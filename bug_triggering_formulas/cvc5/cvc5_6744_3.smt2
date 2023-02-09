(declare-sort S 0)

(declare-fun v () Bool)
(declare-fun S () S)
(assert (= (exists ((q Real)) false) (exists ((q S)) (not (xor v (= q S) (forall ((q Real)) true))))))
(check-sat)
