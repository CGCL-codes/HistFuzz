(assert (forall ((a Int)) (=> (> a 0) (exists ((b Int)) (> a (* b 2))))))
(check-sat)
