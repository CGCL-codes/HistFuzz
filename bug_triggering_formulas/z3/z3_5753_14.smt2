(assert (or (exists ((S String)) false) (exists ((V String)) (and (exists ((V String)) (xor false))))))
(check-sat)
