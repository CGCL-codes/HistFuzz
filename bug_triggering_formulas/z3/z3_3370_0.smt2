(declare-fun _substvar_8_ () (_ BitVec 3))
(declare-fun _substvar_10_ () Bool)
(declare-const v7 Bool)
(declare-const _3-0 (_ BitVec 3))
(assert (or (= _substvar_8_ (_ bv0 3) (_ bv0 3) (_ bv0 3) _3-0) v7))
(assert _substvar_10_)
(check-sat)
