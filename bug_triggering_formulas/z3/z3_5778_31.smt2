(declare-fun a ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((b Int) (c Int) (d (Array Int (Array Int Real)))) (or (= c 0) (= (select d 1) (select (a d) b)))))
(check-sat)
