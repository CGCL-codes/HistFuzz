(assert (forall ((a Float16)) (exists ((b Float16)) (fp.eq a b))))
(check-sat)
