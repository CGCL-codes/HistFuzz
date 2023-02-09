(declare-sort S)

(declare-fun l1 () (lst S))
(assert (exists ((l2 (lst S))) (not (= l1 l2))))
(check-sat)
