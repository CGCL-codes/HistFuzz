(declare-fun t () (_ BitVec 4))
(assert (forall ((s (_ BitVec 4))) (not (= (bvshl s t) (ite (= (_ bv0 1) ((_ extract 0 0) s)) (_ bv0 4) (bvnot s))))))
(check-sat)
