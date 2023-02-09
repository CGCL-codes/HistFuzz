(declare-fun a () Float32)
(assert (fp.isZero (fp.sub RNE (fp.mul RNE a a) (fp.mul RNE a a))))
(check-sat)
