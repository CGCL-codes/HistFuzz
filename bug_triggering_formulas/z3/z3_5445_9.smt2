(declare-sort U)

(declare-fun s () (Array Int Bool))
(declare-fun s1 () (Array Int Bool))
(assert (distinct ((_ map and) s1 s) ((_ map not) ((_ map or) ((_ map not) s1) ((_ map not) s)))))
(check-sat)
(assert (not (=> (and (forall ((x U)) false)) false)))
(check-sat)
