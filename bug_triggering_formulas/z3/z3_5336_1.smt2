(declare-fun x () Real)
(assert (exists ((y Real)) (not (= x y))))
(check-sat)
