(declare-fun dim (Int Int) Int)
(declare-fun a (Int Real) (Array Int Real))
(assert (forall ((b Int) (c Int) (e Int) (d Real)) (=> (<= c b e) (= (select (a (dim c e) d) b) d))))
(check-sat)
