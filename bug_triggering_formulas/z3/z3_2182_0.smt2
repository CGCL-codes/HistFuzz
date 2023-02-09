(declare-fun x () (_ FloatingPoint 11 53))
(assert (fp.eq (fp.add roundNearestTiesToEven x (fp #b0 #b01111111111 #x0000000000000)) (fp #b0 #b10000000000 #x0000000000000)))
(check-sat)
