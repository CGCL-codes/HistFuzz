(declare-fun a () (_ BitVec 1))
(declare-fun b () (_ BitVec 1))
(assert (= a (bvnot b)))
(check-sat)
