(declare-fun a (Bool) Bool)
(declare-fun b (Bool) Bool)
(assert (forall ((c Bool)) (= (a c) (b c))))
(check-sat)
