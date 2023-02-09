(declare-fun a () Real)
(declare-fun b () Int)
(assert (> (- a (* a (* a (- 1)))) b 1))
(check-sat)
