(assert (exists ((a Real)) (and (not (is_int a)) (> (/ 0 a) 0))))
(check-sat)
