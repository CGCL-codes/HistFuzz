(declare-fun t ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun t ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((N Int) (a (Array Int (Array Int Real)))) (= (select (select (t a) 1) 0) (select (select (t a) 0) 0))))
(assert (forall ((b Int)) true))
(assert (exists ((x0 Int) (x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int) (x6 Int) (D (Array Int (Array Int Real))) (E (Array Int (Array Int Real)))) (not (= (select (select (t D) 2) 0) (select (select (t (t (t D) (t E))) 1) 0)))))
(check-sat)
