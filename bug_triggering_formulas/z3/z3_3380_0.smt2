(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(declare-fun g () Real)
(declare-fun ep () Real)
(declare-fun h () Real)
(assert (and (< (/ (- b g) (- (* (/ 6 a (- c f)) (+ 9 a (- c f))) (+ 2.0 d))) h) (<= 0.0 d 0.0 (- a (- c f))) (= (/ (* c f)) f) (> e f) (< 0.0 f ep)))
(check-sat)
