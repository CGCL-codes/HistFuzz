(declare-fun x () Real)
(assert (is_int x))
(assert (is_int (+ x 1)))
(check-sat)
