(declare-fun a () Real)
(assert (= (to_int a) 3))
(assert (= (to_int (/ 1 a)) 0))
(check-sat)
