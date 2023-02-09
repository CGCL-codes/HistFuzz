(declare-const i7 Int)
(assert (exists ((q57 Int) (q58 Int)) (distinct q58 (mod i7 55))))
(assert (not (exists ((q61 Int)) (= 309 q61))))
(check-sat)
