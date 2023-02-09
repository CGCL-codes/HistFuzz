(declare-fun a ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((b Int) (c Int) (d (Array Int (Array Int Real))) (e (Array Int (Array Int Real)))) (let ((f (a d (a e d)))) (= 0 (select (f c) b)))))
(check-sat)
