(declare-sort E 0)

(declare-fun s () (Set E))
(assert (distinct (card s) 1))
(check-sat)
