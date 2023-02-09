(declare-const v0 Bool)
(declare-const v5 Bool)
(assert (not (= false false false v5 (or v0 v5 v0))))
(check-sat)
