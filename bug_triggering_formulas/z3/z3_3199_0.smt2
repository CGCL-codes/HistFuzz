(declare-fun x () (_ FloatingPoint 40 60))
(declare-fun y () (_ BitVec 8))
(assert (= ((_ fp.to_ubv 8) RTP x) y #x00))
(check-sat)
