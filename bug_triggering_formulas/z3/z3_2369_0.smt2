(declare-const C (_ BitVec 8))
(assert (bvuge C #x80))
(assert (bvule C #x80))
(push)
(assert (= (fp.rem (fp #b0 C #b10000000000000000000000) (fp #b0 #x80 #b00000000000000000000000)) (fp #b0 #x7f #b00000000000000000000000)))
(check-sat)
(pop)
(assert (= (fp.rem (fp #b0 #x80 #b10000000000000000000000) (fp #b0 #x80 #b00000000000000000000000)) (fp #b0 #x7f #b00000000000000000000000)))
(check-sat)
