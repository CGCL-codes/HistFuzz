(assert (exists ((a Int) (b Int)) (and (> b 1) (> a (/ 1 b)))))
(check-sat)
