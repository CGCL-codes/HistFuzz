(declare-const _21-0 (_ BitVec 21))
(assert (xor true true true true true true true (= (bvashr (_ bv0 29) (concat (_ bv204 8) _21-0)) (_ bv0 29) (_ bv0 29)) true true true))
(check-sat)
