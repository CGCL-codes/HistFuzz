(declare-sort d)

(declare-sort n)

(declare-const x Bool)
(declare-fun r () n)
(declare-fun h () (Array n m))
(declare-fun s () (Array n B))
(assert (forall ((c (Array n m))) (and (distinct t (m (c r))) (= i (m (c r))) (forall ((n n)) (= i (m (c n)))) (= h (store c r (c_ e (m_ (select h r))))) (forall ((n n)) (or x (= (select s r) (ite (distinct n r) T F)))))))
(check-sat)
