(assert (let ((a!1 (bvsle (to_ieee_bv (fp.add roundNearestTiesToEven ((_ to_fp 8 24) f_ackermann_0) (fp #b0 #x7f #b00000000000000000000000))) #x00000005))) (bvsle (ite a!1 #x00000000 #x00000001) #x00000000)))
(check-sat)
(assert (let ((a!1 (bvsle #x00000005 (to_ieee_bv (fp.add roundNearestTiesToEven ((_ to_fp 8 24) f_ackermann_0) (fp #b0 #x7f #b00000000000000000000000)))))) (bvsle (ite a!1 #x00000001 #x00000000) #x00000000)))
(check-sat)
(assert (= #x00000003 action_ackermann_0))
(assert (let ((a!1 (bvmul #x00000003 (to_ieee_bv (fp.add roundNearestTiesToEven ((_ to_fp 8 24) f_ackermann_1) (fp #b0 #x7f #b00000000000000000000000)))))) (bvsle a!1 #x00000000)))
(check-sat)
