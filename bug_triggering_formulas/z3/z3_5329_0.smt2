(declare-fun a () Real)
(assert (forall ((b Real)) (exists ((c Real)) (and (= (+ a (* c (+ b c) (+ b c))) 0) (not (= a 0)) (> c 0)))))
(check-sat)
