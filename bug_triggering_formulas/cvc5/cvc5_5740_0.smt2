(assert (exists ((c Int)) (distinct (f c (mod 0 0)) 0)))
(check-sat)
