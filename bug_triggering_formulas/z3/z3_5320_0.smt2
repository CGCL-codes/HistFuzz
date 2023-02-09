(assert (exists ((i Int)) (not (and (not (= i 0)) (ite (not (= i 0)) false true)))))
(check-sat)
