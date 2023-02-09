(declare-sort a)

(declare-fun b (a a) Bool)
(declare-fun c () a)
(declare-fun d () a)
(declare-fun g () a)
(assert (xor f (b g c)))
(check-sat)
