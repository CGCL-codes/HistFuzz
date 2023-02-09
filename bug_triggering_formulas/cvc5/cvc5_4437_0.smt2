(declare-fun a () (_ BitVec 8))
(declare-fun b () (_ BitVec 8))
(assert (forall ((c (_ BitVec 8))) (= (bvashr c a) b)))
(check-sat)
