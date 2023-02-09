(declare-const x (_ BitVec 1))
(assert (= ((_ to_fp_unsigned 5 11) RNE ((_ zero_extend 1) x)) (fp (_ bv0 1) (_ bv0 5) (_ bv0 10))))
(check-sat)
