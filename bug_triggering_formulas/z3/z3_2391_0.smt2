(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(assert (and (> 0 (- d f)) (= d (ite (>= (/ a c) f) (+ b f) f)) (> 0 (/ a (/ c e))) (or (= e 1.0) (= e 2.0)) (> d 0) (= c 0)))
(check-sat)
