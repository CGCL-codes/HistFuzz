(declare-sort S 1)

(declare-fun e (b b) Bool)
(assert (forall ((f b) (i b)) (e f i)))
(check-sat)
