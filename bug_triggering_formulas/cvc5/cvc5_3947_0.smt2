(declare-fun a () Real)
(declare-fun b () Real)
(assert (forall ((c Real)) (or (< c a) (< 0 b))))
(check-sat)
