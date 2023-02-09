(declare-fun a () (_ BitVec 9))
(assert (let ((b (bvudiv ((_ zero_extend 7) a) (_ bv29487 16)))) (bvule (bvudiv b b) b)))
(check-sat)
