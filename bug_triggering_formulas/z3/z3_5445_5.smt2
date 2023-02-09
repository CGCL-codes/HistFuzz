(declare-fun A () (Set Int))
(declare-fun D () (Set Int))
(assert (= D (setminus A D)))
(check-sat)
