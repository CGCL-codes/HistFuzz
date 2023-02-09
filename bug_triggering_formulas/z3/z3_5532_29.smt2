(declare-sort c)

(declare-fun g () (Array c a))
(declare-fun h () (Array c e))
(assert (xor (forall ((i c)) (distinct (= (select g i) b))) (forall ((i c)) (= (f (select h i)) invack))))
(check-sat)
