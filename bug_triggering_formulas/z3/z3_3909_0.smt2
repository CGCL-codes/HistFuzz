(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun foo () Int)
(assert (= a 1 b))
(assert (> foo 0))
(assert (= (> (+ a b foo) 1) (= c 1)))
(assert (<= 0 c))
(check-sat)
