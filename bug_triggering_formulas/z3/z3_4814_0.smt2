(declare-fun c (f) a)
(assert (forall ((e f)) (= (c e) (g e) (h e))))
(check-sat)
