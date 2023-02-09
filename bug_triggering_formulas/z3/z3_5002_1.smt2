(declare-fun a () Bool)
(assert (forall ((b Int) (c Bool) (d Int) (f Int) (e Int)) (or (not (and (or (not (or a (= b 0))) (= d f)) (= d e) (not c))) (= f (ite c 1 e)))))
(check-sat)
