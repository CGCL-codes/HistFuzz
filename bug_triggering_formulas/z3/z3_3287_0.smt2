(declare-sort E ) 

(declare-fun s () (Set E))
(declare-fun t () (Set E))
(declare-fun u () (Set E))
(assert (< (card (union s t)) 13 (card (union s u)) 215))
(assert (<= (card s) 48))
(check-sat)
