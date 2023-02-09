(declare-const _30-0 (_ BitVec 30))
(assert (xor true true true true (= (_ bv0 30) _30-0 (_ bv0 30) (bvsmod _30-0 _30-0)) true))
(check-sat)
