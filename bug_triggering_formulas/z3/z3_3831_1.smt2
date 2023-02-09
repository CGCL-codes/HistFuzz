(declare-fun a () Bool)
(assert (or (and a a) (and a a)))
(check-sat)
