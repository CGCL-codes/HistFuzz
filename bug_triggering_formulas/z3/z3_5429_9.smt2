(declare-fun a () Bool)
(assert (= 1 (+ 0 (ite (not (not (= (+ 0 (ite a 1 0)) 0))) 0 1))))
(check-sat)
