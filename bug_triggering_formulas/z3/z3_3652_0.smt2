(declare-fun a () Real)
(assert (forall ((b Real)) (= (= a 0) (= b 0))))
(check-sat)
