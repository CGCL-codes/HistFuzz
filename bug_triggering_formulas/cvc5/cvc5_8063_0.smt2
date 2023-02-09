(declare-fun a () Int)
(declare-fun b () Int)
(assert (and (= a b) (< a ((_ iand 2) a 1))))
(check-sat)
