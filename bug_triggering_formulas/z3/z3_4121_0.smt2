(declare-fun a () Bool)
(assert (forall ((b Int) (c Int)) (= b c 0)))
(assert (not a))
(check-sat)
