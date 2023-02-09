(declare-sort S0 0)

(declare-const S0-0 S0)
(assert (fmf.card S0-0 2))
(push)
(assert false)
(check-sat)
(pop)
(check-sat)
