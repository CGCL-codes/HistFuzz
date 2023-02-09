(declare-fun v () RoundingMode)
(assert (= ((_ to_fp 11 53) v 0.0) (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))))
(check-sat)
