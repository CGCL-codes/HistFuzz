(declare-fun a () (_ BitVec 2))
(declare-fun b () (_ BitVec 2))
(assert (= (bvsmod (bvadd (bvneg b) b) b) (bvshl (bvnot (bvmul a a)) b)))
(check-sat)
