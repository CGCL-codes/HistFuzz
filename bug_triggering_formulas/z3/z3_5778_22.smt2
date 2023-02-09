(declare-const x Bool)
(declare-fun e () (_ BitVec 64))
(assert (or (and x (fp.geq ((_ to_fp 11 53) e) ((_ to_fp 11 53) (_ bv0 64)))) (fp.geq ((_ to_fp 11 53) e) (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))))
(check-sat)
