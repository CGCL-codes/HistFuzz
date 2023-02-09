(declare-fun a () Real)
(declare-fun b () Real)
(assert (not (exists ((c Real)) (=> (< 0.0 b) (< (/ 0 0) a)))))
(check-sat)
