(declare-fun a () Int)
(declare-fun d () Int)
(declare-fun b () (Set Int))
(declare-fun c () (Set Int))
(declare-fun e () (Set Int))
(assert (subset b e))
(assert (> a 0))
(assert (= (card b) d))
(assert (= (card c) 0 (mod 0 d)))
(assert (> (card (setminus e (intersection (intersection e b) (setminus e c)))) a))
(check-sat)
