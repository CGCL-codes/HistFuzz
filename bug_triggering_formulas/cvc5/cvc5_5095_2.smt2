(declare-const _42-0 (_ BitVec 42))
(assert (exists ((q26 (_ BitVec 6)) (q27 (_ BitVec 28)) (q28 (_ BitVec 42))) (not (bvugt (bvudiv _42-0 _42-0) q28))))
(check-sat)
