(declare-fun h () Bool)
(declare-fun e (b) Bool)
(assert (forall ((f b)) (= (e f) (ite ((_ is g) f) true (ite ((_ is c) f) (e (d f)) h)))))
(check-sat)
