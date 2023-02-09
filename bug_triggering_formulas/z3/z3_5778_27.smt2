(declare-fun e () (Array Int (Array Int Real)))
(assert (forall ((x Int)) (= (> x 0) (= (select (select e 0) 1) (select (select e 0) x)))))
(check-sat)
