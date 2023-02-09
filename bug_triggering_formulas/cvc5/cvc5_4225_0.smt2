(assert (forall ((a (-> Int Int)) (b Int)) (not (= (a b) 0))))
(check-sat)
