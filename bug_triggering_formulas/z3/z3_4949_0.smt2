(declare-fun a () Real)
(declare-fun b () Real)
(assert (exists ((c Real)) (<= c b a)))
(check-sat)
