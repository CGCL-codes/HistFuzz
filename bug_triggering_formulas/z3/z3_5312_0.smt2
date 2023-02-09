(declare-const x Bool)
(declare-fun sk () Real)
(assert (exists ((k Real)) (exists ((s Real)) (let (($x40 (= sk 0.0))) (and x (> s 2.0) (= s (* k k k)) (= s (+ 1.0 (* sk sk))))))))
(check-sat)
