(declare-fun a () Real)
(assert (forall ((b Real)) (and (= a b) (= 0 0))))
(check-sat)
