(declare-fun _substvar_555_ () (_ BitVec 32))
(declare-fun _substvar_545_ () (_ BitVec 2))
(assert (forall ((_substvar_1436_ (_ BitVec 1))) (exists ((_substvar_535_ (_ BitVec 1))) (forall ((_substvar_965_ (_ BitVec 1))) (and (= _substvar_965_ (_ bv1 1)) (= _substvar_545_ ((_ zero_extend 1) (bvcomp (_ bv0 32) (bvand _substvar_555_ #b00000000000000000000000000001001)))))))))
(check-sat)
