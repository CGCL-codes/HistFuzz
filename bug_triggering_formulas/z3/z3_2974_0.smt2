(declare-fun a (Int) Bool)
(assert (exists ((b Int)) (and (> b 0) (a b))))
(check-sat)
