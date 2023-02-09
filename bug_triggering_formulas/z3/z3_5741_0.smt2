(declare-const x Bool)
(assert (and x (bvsgt (_ bv0 1) (_ bv0 1)) x x))
(check-sat)
