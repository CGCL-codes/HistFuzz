(declare-sort A)

(declare-fun f (A) A)
(assert (forall ((x A)) (forall ((y A)) (and (= x (f (f x))) (= x y)))))
(check-sat)
