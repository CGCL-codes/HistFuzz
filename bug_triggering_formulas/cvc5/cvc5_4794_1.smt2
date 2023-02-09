(declare-const a (Set Int))
(declare-const b (Set Int))
(assert (or (forall ((x Int)) (member x a)) (= 0 (card (intersection b (singleton 0))))))
(check-sat)
