(declare-fun a () Bool)
(assert (forall ((b Int) (c Bool) (d Int)) (or (= d (/ 1 (ite c 9 0))) (<= (ite a 1 b) (/ 1 (ite c 9 0))))))
(check-sat)
