(declare-fun a () Bool)
(assert (> (mod (ite a 0 1) 2) 1))
(check-sat)
