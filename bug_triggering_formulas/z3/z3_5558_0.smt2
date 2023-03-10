(declare-fun udiv () (_ BitVec 32))
(declare-fun b () (_ BitVec 32))
(declare-fun x () (_ BitVec 32))
(assert (= udiv (bvudiv (_ bv4294967295 32) b)))
(assert (bvule x udiv))
(assert (let ((res (bvmul ((_ zero_extend 32) b) ((_ zero_extend 32) x)))) (bvugt res (_ bv4294967295 64))))
(check-sat)
