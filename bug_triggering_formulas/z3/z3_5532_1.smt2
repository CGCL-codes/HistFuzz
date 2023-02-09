(declare-fun j (a) Bool)
(assert (forall ((m a)) (or (j m) (not ((_ is h) m)))))
(check-sat)
