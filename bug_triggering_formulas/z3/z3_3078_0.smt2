(declare-fun a () (_ BitVec 2))
(declare-fun b () (_ BitVec 2))
(declare-fun c () (_ BitVec 2))
(assert (bvslt a (bvadd b (bvsdiv c (_ bv1 2)))))
(check-sat)
