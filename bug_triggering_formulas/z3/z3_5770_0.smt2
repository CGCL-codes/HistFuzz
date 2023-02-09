(declare-fun v () Real)
(assert (forall ((V Real)) (= 0.0 (* v v))))
(check-sat)
