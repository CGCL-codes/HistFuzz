(declare-const x Bool)
(assert (exists ((V Float32)) false))
(assert (or false (and x x)))
(check-sat)
