(declare-fun s () (Set Int))
(assert (is_singleton (complement (singleton 0))))
(assert (= 2 (card s)))
(check-sat)
