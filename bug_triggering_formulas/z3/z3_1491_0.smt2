(declare-fun A () Bool)
(declare-fun B () Bool)
(declare-fun x () Int)
(assert (or (not A) (not B)))
(assert (or (not A) (<= x 50)))
(assert (or (not B) (<= x 99)))
(assert (<= x 200))
(check-sat)
