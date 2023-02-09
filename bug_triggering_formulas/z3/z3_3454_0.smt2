(declare-sort a 0) 

(declare-fun app (a Int) Int)
(assert (forall ((b a) (c a)) (xor (exists ((d Int)) (= 0 (app c d))) (= b c))))
(assert (distinct 0 0))
(check-sat)
