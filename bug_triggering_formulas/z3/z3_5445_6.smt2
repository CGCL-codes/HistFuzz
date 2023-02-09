(assert (forall ((s (_ BitVec 3))) (= s (bvor s (bvand (bvnot s) (_ bv1 3))))))
(check-sat)
