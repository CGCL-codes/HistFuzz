(declare-fun v () Bool)
(assert (and (forall ((q Bool)) (not (xor v (exists ((q Bool)) true) (and (not v) (not q)))))))
(check-sat)
