(declare-fun b () (_ BitVec 32))
(declare-fun c () (_ BitVec 32))
(declare-fun d () (_ BitVec 32))
(declare-fun g () (_ BitVec 32))
(assert (not (exists ((e (_ BitVec 32))) (let ((?f (bvadd b c))) (= (and (bvsle e b)) (bvsge (bvadd (bvadd g (bvmul (bvneg (_ bv5 32)) (bvmul e e))) (bvmul e d)) (_ bv0 32)) (bvsle (bvadd (bvmul (bvneg (_ bv10 32)) b) d) (bvadd (bvmul (bvneg (_ bv10 32)) ?f) (_ bv16 32))))))))
(check-sat)
