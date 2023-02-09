(declare-fun a () Int)
(assert (= (div a 2) 2))
(assert (= (div a 3) 0))
(check-sat)
