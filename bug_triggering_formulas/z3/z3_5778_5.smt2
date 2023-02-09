(declare-fun v () Bool)
(assert (forall ((T Bool)) (xor v T (and v (not (xor false))))))
(check-sat)
