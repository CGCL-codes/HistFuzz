(declare-fun a () Real)
(assert (distinct 0 (/ a (div (to_int a) 10))))
(check-sat)
