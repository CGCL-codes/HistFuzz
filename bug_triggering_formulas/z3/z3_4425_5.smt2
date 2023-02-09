(declare-fun a () (_ BitVec 8))
(assert (not (= (bvand a (_ bv16 8)) (_ bv0 8))))
(check-sat)
