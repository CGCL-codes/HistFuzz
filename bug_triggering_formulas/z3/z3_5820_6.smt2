(declare-const a (_ BitVec 1))
(declare-const b (_ BitVec 1))
(assert (not (= a b)))
(check-sat)
