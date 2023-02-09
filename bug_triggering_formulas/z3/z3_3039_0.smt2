(assert (forall ((a Real)) (exists ((b Real)) (forall ((c Real)) (exists ((d Real)) (forall ((e Real)) (exists ((f Real)) (and (< e c) (or (= a 0) (= f d))))))))))
(assert (exists ((g Real)) (< g 0)))
(check-sat)
