(declare-fun a () Int)
(declare-fun b () Int)
(assert (= b (/ 300.0 a)))
(check-sat)
