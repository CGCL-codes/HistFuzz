(declare-fun a () Real)
(assert (> (* a (+ a (* a (* a 2)))) (div (to_int a) 2)))
(assert (<= 3 a 4))
(check-sat)
