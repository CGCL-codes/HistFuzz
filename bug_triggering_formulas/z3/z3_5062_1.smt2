(declare-fun _50-0 () (_ BitVec 50))
(push)
(assert (not (bvslt (bvsdiv (_ bv1 50) _50-0) (_ bv1 50))))
(push)
(pop)
(check-sat)
