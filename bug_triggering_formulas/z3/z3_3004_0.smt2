(declare-fun a () Bool)
(assert (or a (and a)))
(check-sat)
