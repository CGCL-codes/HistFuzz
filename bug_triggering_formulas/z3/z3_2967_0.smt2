(declare-sort T 0)

(assert (forall ((a T) (b T)) (= a b)))
(check-sat)
