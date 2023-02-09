(declare-fun a () Real)
(declare-fun b () Real)
(assert (exists ((c Real)) (and (or (< b c 0) (> a 0)) (> b 0) (> (+ a b) 0))))
(check-sat)
