(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (= (+ (ite a 1 0) (ite b 1 0)) 1))
(check-sat)
