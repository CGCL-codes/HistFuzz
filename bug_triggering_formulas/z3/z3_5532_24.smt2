(declare-fun trans ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun a ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((b Int) (c Int) (d Int) (k Int) (e (Array Int (Array Int Real))) (f (Array Int (Array Int Real))) (l Int)) (let ((g (a e (a f (trans e))))) (= (= (select (f d) k) 0) (distinct 0 (select (g c) b))))))
(assert (forall ((h Int) (i Int) (j (Array Int (Array Int Real)))) (let ((g (trans j))) (= 0 (select (g i) h)))))
(check-sat)
