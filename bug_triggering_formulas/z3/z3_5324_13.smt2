(declare-fun f () (Set Int))
(assert (= f (complement f)))
(check-sat)
