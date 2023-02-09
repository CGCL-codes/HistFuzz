(assert (forall ((x Int)) (exists ((y Int) (z Int)) (and (= y x) (= 0 z)))))
(check-sat)
(assert (forall ((x Int)) (exists ((y Int) (z (_ BitVec 32))) (and (= y x) (= #x00000000 z)))))
(check-sat)
