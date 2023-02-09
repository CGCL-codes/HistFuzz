(assert (forall ((a Int) (c Int) (b Int)) (=> (< a c) (< 0 b) (< (* a b) (* c b)))))
(check-sat)
