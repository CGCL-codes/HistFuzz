(declare-fun a () Real)
(assert (= (* (div 7 a 2)) 0))
(check-sat)
