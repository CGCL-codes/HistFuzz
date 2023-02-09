(declare-const _8-0 (_ BitVec 8))
(assert (bvsle _8-0 (bvsrem _8-0 _8-0)))
(check-sat)
