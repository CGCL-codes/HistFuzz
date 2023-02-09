(declare-fun a (Int) Bool)
(assert (exists ((b Int)) (a 0)))
(check-sat)
