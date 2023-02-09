(declare-fun a () Real)
(assert (forall ((b Real)) (= (= b a) (= b 0))))
(check-sat)
