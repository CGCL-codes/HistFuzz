(declare-fun a () Real)
(assert (> 0 (div (to_int a) (to_int (* a (+ a 10000))))))
(check-sat)
