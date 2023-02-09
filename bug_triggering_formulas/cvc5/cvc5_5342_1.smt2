(declare-fun s () (Set Int))
(assert (is_singleton (complement (complement s))))
(assert (= 2 (card s)))
(check-sat)
