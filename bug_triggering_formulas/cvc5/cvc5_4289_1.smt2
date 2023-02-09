(declare-fun a () Int)
(assert (= a (div a 2)))
(assert (= (div a a) 0))
(check-sat)
