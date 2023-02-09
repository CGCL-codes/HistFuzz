(declare-fun a () Real)
(declare-fun b () Real)
(assert (< a (* (* a b) 7) (mod 0 0)))
(check-sat)
