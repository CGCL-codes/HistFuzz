(declare-fun t2001uscore0 () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(assert (not (exists ((ts2001uscore0 Real)) (= (> d (div c (/ (mod e e) (* b)))) (= (>= 0 d) (=> (> ts2001uscore0 t2001uscore0) (<= 0 f)))))))
(check-sat)
