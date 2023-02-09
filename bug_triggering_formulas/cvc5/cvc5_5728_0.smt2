(declare-fun k_141 () (_ BitVec 16))
(assert (forall ((x (_ BitVec 2)) (y (_ BitVec 2))) (not (= (_ bv0 3) (bvsmod ((_ zero_extend 1) y) (concat (bvor ((_ extract 1 1) x) ((_ extract 0 0) x)) ((_ extract 0 0) (bvsdiv k_141 (concat (_ bv1 13) ((_ extract 1 1) x) ((_ extract 1 1) y) ((_ extract 0 0) x)))) ((_ extract 0 0) k_141)))))))
(check-sat)
