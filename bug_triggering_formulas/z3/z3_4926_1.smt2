(declare-fun a () (_ BitVec 64))
(assert (fp.leq ((_ to_fp 11 53) a) ((_ to_fp 11 53) (_ bv0 64))))
(assert (distinct (_ bv0 32) ((_ extract 31 0) ((_ extract 63 32) ((_ sign_extend 32) ((_ fp.to_sbv 32) RTZ (fp.neg ((_ to_fp 11 53) a))))))))
(check-sat)
