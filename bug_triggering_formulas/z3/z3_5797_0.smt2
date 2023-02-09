(declare-const a (_ BitVec 2))
(assert (not (bvsmul_noovfl ((_ zero_extend 2) a) ((_ zero_extend 2) a))))
(check-sat)
