(declare-fun a () String)
(assert (distinct a "0" "1"))
(check-sat)
