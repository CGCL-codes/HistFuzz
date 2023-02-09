(declare-fun fpv14 () Float64)
(push)
(assert (fp.isZero (fp.max fpv14 ((_ to_fp 11 53) RNE 42739))))
(check-sat)
