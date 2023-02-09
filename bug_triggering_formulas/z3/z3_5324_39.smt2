(declare-sort U)

(assert (forall ((d U)) (forall ((b U)) (and (forall ((x U)) (= x d))))))
(check-sat)
