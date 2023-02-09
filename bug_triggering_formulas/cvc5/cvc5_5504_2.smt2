(assert (fp.eq ((_ to_fp 8 24) roundTowardNegative (fp #b0 #b10001111111 #x0000000000000)) (fp #b0 #xfe #b11111111111111111111111)))
(check-sat)
