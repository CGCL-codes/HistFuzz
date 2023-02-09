(declare-fun B () (Bag Int))
(assert (not (= 0 (bag.count 1 B))))
(check-sat)
