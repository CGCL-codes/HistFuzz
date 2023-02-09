(declare-fun p (Bool) Bool)
(assert (forall ((b Bool)) (and (p false) (not (p b)))))
(check-sat)
