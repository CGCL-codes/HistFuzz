(declare-const x7 Bool)
(assert (forall ((x (_ BitVec 8))) (and x7 (distinct x (_ bv0 8)))))
(check-sat)
