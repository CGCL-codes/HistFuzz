(declare-fun a () Real)
(assert (is_int (/ 0 a)))
(check-sat)
