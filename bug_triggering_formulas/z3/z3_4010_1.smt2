(declare-fun a () Int)
(declare-fun b () String)
(declare-fun c () String)
(declare-fun d () String)
(assert (<= 20 a))
(assert (= d (str.++ b c)))
(assert (= a (str.len d)))
(check-sat)
