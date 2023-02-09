(declare-sort S 0)

(declare-const x S)
(assert (fmf.card x 2))
(check-sat)
