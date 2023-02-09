(declare-fun f (Bool) Bool)
(assert (forall ((v8 Bool)) (forall ((v7 Bool)) (f (= v7 v8)))))
(check-sat)
