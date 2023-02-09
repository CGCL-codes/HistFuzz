(declare-fun A3 () (Array Int (Array Bool Int)))
(declare-fun f ((Array Int (Array Bool Int))) Int)
(assert (forall ((B (Array Bool Int))) (and (= 0 (f A3)) (> 0 (f (store A3 0 B))))))
(check-sat)
