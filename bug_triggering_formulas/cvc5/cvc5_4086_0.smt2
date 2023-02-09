(assert (forall ((b Real)) (forall ((c Int)) (and (> c (* b 2))))))
(check-sat)
