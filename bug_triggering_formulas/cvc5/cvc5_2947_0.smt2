(declare-fun f (Bool) Bool)
(assert (not (f true)))
(assert (f (ite (f true) true (f false))))
(check-sat)
