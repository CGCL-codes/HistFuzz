(declare-fun a () (Set String))
(declare-fun b () (Set (Tuple Int Int)))
(declare-fun c () (Set (Tuple Int Int)))
(declare-fun d () Int)
(assert (distinct c (tclosure b)))
(assert (distinct d (card a)))
(check-sat)
