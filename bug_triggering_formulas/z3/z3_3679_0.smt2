(declare-fun a () Real)
(assert (forall ((b Real)) (not (= (mod (to_int b) 2) a))))
(check-sat)
