(declare-fun a () (Array Int Int))
(assert (forall ((b Int)) (=> (< 0 b) (exists ((c Int)) (let ((d (store (store a 0 0) 10 0))) (= c (d b)))))))
(check-sat)
