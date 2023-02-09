(assert (forall ((s2 (Array Int Bool))) (exists ((s1 (Array Int Bool))) (= s1 ((_ map or) s1 s2)))))
(check-sat)
