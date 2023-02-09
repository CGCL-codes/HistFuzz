(declare-fun a () Real)
(assert (not (is_int (to_real a))))
(check-sat)
