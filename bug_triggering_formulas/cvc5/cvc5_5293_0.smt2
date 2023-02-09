(declare-const _56-0 (_ BitVec 56))
(assert (forall ((q2 (_ BitVec 7)) (q3 (_ BitVec 56)) (q4 (_ BitVec 56))) (=> (bvugt q4 (bvudiv _56-0 _56-0)) false)))
(check-sat)
