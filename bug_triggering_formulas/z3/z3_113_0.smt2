(declare-fun s0 () (_ FloatingPoint 8 24))
(declare-fun s1 () (_ BitVec 32))
(assert (let ((s3 (fp.eq s0 s2))) (let ((s5 (fp.isInfinite s2))) (let ((s7 (not s5))) (let ((s9 ((_ fp.to_sbv 32) roundNearestTiesToEven s2))) (let ((s11 (ite s7 s9 s10))) (let ((s12 (= (bvcomp s1 s11) #b1))) (let ((s13 (and s3 s12))) s13))))))))
(check-sat)
(declare-fun s0 () (_ FloatingPoint 8 24))
(declare-fun s1 () (_ BitVec 32))
(assert (let ((s3 (fp.eq s0 s2))) (let ((s5 (fp.isInfinite s0))) (let ((s7 (not s5))) (let ((s9 ((_ fp.to_sbv 32) roundNearestTiesToEven s0))) (let ((s11 (ite s7 s9 s10))) (let ((s12 (= (bvcomp s1 s11) #b1))) (let ((s13 (and s3 s12))) s13))))))))
(check-sat)
