(declare-fun x () Int)
(assert y)
(assert (< x 3))
(push)
(assert (< x 2))
(check-sat)
(pop)
