(declare-fun a (Int) Bool)
(declare-fun b (Int) Int)
(assert (= (b 0) 0))
(assert (forall ((c (-> Int Int))) (a (c 0))))
(check-sat)
