(declare-fun a () Int)
(declare-fun b () Int)
(assert (exists ((c Int)) (<= 0 c (- (div a b)))))
(check-sat)
