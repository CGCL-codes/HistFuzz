(declare-fun a () (_ BitVec 1))
(declare-fun b () (_ BitVec 1))
(assert (= (bvnand a (bvnand b b)) a))
(check-sat)
