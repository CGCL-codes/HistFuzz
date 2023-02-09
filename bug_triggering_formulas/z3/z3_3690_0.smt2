(declare-fun a ((Array Int (Array Int Real))) (Array Int (Array Int Real)))
(declare-fun b ((Array Int (Array Int Real)) (Array Int (Array Int Real))) (Array Int (Array Int Real)))
(assert (forall ((?c Int) (?d Int) (?g (Array Int (Array Int Real))) (?e (Array Int (Array Int Real)))) (let ((?f (b ?g (b ?e (a ?g))))) (= 0 (select (?f ?d) ?c)))))
(check-sat)
