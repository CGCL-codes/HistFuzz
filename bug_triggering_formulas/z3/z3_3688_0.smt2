(declare-fun a (Int Int Real) Real)
(assert (= 0 0))
(assert (forall ((?b Real)) (= (a 0 0 ?b) 0.0)))
(check-sat)
