(declare-fun a (Real) (Array Int (Array Int Real)))
(assert (forall ((b Int) (c Int) (d Real)) (and (= (select (select (a d) b) c) d))))
(check-sat)
