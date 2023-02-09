(declare-const x Bool)
(assert (exists ((s Real)) (or x (not x))))
(check-sat)
