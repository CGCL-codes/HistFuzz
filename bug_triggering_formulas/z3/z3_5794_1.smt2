(declare-fun _18-0 () (_ BitVec 9))
(assert (exists ((q64 (_ BitVec 9))) (bvsmul_noovfl q64 _18-0)))
(check-sat)
