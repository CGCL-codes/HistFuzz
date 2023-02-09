(declare-sort S 0)

(assert (forall ((a S) (b S)) (= a b)))
(check-sat)
