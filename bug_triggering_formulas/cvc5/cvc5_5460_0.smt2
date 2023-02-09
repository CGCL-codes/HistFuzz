(declare-fun bag6 () (Bag Int))
(assert (or (bag.is_included bag6 bag6)))
(check-sat)
