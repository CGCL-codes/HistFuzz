(declare-fun a () (_ BitVec 64))
(assert (= (not (fp.geq ((_ to_fp 11 53) a) ((_ to_fp 11 53) (_ bv0 64)))) (fp.geq ((_ to_fp 11 53) a) ((_ to_fp 11 53) (_ bv0 64)))))
(check-sat)
