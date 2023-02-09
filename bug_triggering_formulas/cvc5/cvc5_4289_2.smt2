(declare-fun a (Int) Int)
(assert (= (div (a 0) 2) 0))
(check-sat)
