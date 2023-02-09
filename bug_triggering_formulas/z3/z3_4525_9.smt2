(declare-fun x () (Seq Int))
(declare-fun y () (Seq Int))
(assert (not (= x y)))
(check-sat)
