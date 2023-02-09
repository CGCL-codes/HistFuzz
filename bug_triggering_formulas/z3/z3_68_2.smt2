(declare-fun x0 () Float32)
(assert (= (fp.abs x0) (fp.min (_ +zero 8 24) (_ -zero 8 24))))
(check-sat)
