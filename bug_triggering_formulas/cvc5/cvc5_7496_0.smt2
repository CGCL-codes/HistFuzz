(declare-fun x2 () (Array (Array Bool Bool) Bool))
(assert (forall ((x (Array (Array Bool Bool) Bool))) (exists ((x3 (Array Bool Bool))) (forall ((D (Array (Array (Array Bool Bool) Bool) (Array (Array Bool Bool) Bool)))) (exists ((x38 (Array (Array Bool Bool) Bool))) (exists ((C (Array Int (Array (Array Bool Bool) Bool)))) (distinct x2 x (select C 0) (select (store D x38 (store (select C 0) (store x3 false true) false)) x38))))))))
(check-sat)
