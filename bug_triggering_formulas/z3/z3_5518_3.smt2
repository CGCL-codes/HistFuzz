(declare-fun d () T)
(declare-fun a () T)
(assert (forall ((c T)) (distinct a d c d)))
(check-sat)
