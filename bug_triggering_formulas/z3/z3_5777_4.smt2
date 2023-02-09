(declare-fun v () Bool)
(assert (forall ((V String)) (exists ((A Bool)) (exists ((V Int)) (or v (and A (not v)))))))
(check-sat)
