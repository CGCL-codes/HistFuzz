(declare-fun a () Bool)
(assert (not (exists ((b Bool)) a)))
(check-sat)
