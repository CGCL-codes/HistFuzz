(declare-fun xI2 () Real)
(declare-fun xI1 () Real)
(assert (forall ((I1uscore1dollarskuscore449 Real)) (exists ((ep Real)) (forall ((V Real)) (forall ((ts463uscore0 Real)) (= (and (= xI2 0) (= 0.0 V)) (= (= xI1 0.0) (or (= I1uscore1dollarskuscore449 1.0) (and (not (= 0.0 ep)) (not (= ts463uscore0 1.0)))))))))))
(check-sat)
