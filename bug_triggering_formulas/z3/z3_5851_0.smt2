(declare-fun v () Int)
(declare-fun a () Real)
(assert (and (= v 1) (= 1 (- a (* a (* a (- 1)))))))
(check-sat)
