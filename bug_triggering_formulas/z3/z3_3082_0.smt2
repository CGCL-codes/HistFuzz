(declare-fun a () (_ BitVec 2))
(declare-fun b () (_ BitVec 2))
(assert (bvsle a b))
(check-sat)
