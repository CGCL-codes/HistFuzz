(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (< (* c a) (* c (* a (div c b)))))
(check-sat)
