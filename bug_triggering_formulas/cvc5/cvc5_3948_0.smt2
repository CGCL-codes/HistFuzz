(declare-fun a () (_ BitVec 32))
(assert (exists ((b (_ BitVec 32))) (forall ((c (_ BitVec 32))) (or (= (bvadd (bvmul (bvneg (_ bv79 32)) c) (bvmul (bvneg (_ bv17 32)) b)) (bvneg (_ bv33 32))) (bvsle (bvadd (bvmul (_ bv79 32) c) (bvmul (_ bv14 32) a)) (_ bv0 32)) (bvsge (bvadd (bvadd (bvmul (bvneg (_ bv5 32)) c) (bvmul (_ bv11 32) b)) (bvmul (_ bv23 32) a)) (_ bv40 32))))))
(check-sat)
