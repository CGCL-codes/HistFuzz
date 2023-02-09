(declare-sort S0 0)

(declare-const a (Array Int S0))
(declare-const b (Array Int S0))
(assert (distinct b a))
(check-sat)
