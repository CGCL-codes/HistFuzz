(declare-fun a () Int)
(declare-fun b (Int) Int)
(declare-fun c () Int)
(declare-fun d () Int)
(declare-fun e () Int)
(assert (<= 0 a d))
(assert (< 17 (- c 1)))
(assert (< a (- c 4)))
(assert (= (= a 0) (= a 1) (= a 12) (= (b 7) e)))
(check-sat)
