(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)
(declare-fun e () Bool)
(declare-fun f () Bool)
(assert (<= (+ (ite c 1 0) (ite f 1 0) (ite e 1 0)) 1 (ite d 1 0) (* (ite a 1 0) (ite c 1 0)) (* (ite a 1 0) (ite b 1 0))))
(check-sat)
