(declare-fun g () String)
(declare-fun a () Int)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(declare-fun f () String)
(declare-fun e () Bool)
(assert (ite e (xor (= a (str.len f)) (distinct c d)) (= a (str.len g) (str.len b))))
(check-sat)
