(declare-const a Real)
(assert (not (< (* a a) 0 0)))
(check-sat)
