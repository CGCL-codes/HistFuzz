(declare-fun a () (_ BitVec 1))
(declare-fun b () (_ BitVec 1))
(assert (forall ((c (_ BitVec 1))) (distinct (bvor c a) b)))
(check-sat)
