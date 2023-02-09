(declare-sort s 0)

(declare-fun a () s)
(declare-fun b () s)
(declare-fun c (s) s)
(assert (or (= a b) (= b (c b))))
(check-sat)
