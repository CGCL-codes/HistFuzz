(declare-fun a (Int) Bool)
(assert (exists ((b Int)) (a b)))
(check-sat)
