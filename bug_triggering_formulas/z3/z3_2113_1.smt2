(assert (= ((_ fp.to_ubv 32) roundTowardZero (fp #b0 #b10000011110 #x0000000000000)) #x80000000))
(check-sat)
