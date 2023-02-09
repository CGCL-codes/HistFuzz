(declare-fun a () Real)
(assert (forall ((b Real)) (= (= a b) (= b 0))))
(check-sat)
