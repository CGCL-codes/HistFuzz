(declare-const x ty)
(declare-const y ty)
(assert (not (= x y)))
(check-sat)
