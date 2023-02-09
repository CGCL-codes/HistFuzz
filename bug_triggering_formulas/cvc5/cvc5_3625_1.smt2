(assert (exists ((a (_ BitVec 1))) (forall ((b (_ BitVec 1))) (exists ((c (_ BitVec 1))) (forall ((d (_ BitVec 1))) (or (and (= b c) (= c (_ bv0 1)) (distinct d (bvadd c (_ bv1 1)))) (bvslt (bvmul ((_ sign_extend 1) a) ((_ zero_extend 1) d)) (bvmul ((_ sign_extend 1) a) ((_ zero_extend 1) b)))))))))
(check-sat)
