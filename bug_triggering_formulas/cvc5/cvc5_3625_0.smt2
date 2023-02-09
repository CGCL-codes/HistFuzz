(assert (exists ((a (_ BitVec 32))) (forall ((b (_ BitVec 32))) (exists ((c (_ BitVec 32))) (forall ((d (_ BitVec 32))) (or (and (= b c) (= c #x00000004) (distinct d (bvadd c #x00000001))) (bvslt (bvmul ((_ sign_extend 33) a) ((_ zero_extend 33) d)) (bvmul ((_ sign_extend 33) a) ((_ zero_extend 33) b)))))))))
(check-sat)
