(declare-fun a ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((b Int) (c Int) (d (Array Int (Array Int Real))) (g (Array Int (Array Int Real))) (e Int)) (let ((f (a d g))) (= (<= c e) (distinct (select (f b) c) (select (f c) b))))))
(check-sat)
