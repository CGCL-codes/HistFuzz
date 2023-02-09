(declare-const _28-0 (_ BitVec 28))
(declare-const arr1 (Array (_ BitVec 40) Bool))
(assert (select arr1 (concat _28-0 (_ bv0 12))))
(check-sat)
