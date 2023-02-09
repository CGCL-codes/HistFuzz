(declare-fun a (Int Int) Bool)
(assert (forall ((b Int) (c Int) (e Int)) (exists ((d Int)) (forall ((f Int)) (= (a b d) (= (= e f) (a c f)))))))
(check-sat)
