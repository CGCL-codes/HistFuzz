(declare-const a (Set Int))
(declare-const b (Set Int))
(assert (or (forall ((x Int)) (member x b)) (= (card (intersection a b)) 0) (= (card b) 0)))
(check-sat)
