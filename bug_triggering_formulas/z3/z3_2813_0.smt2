(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Int)
(declare-fun e () Int)
(declare-fun f () Int)
(assert (= (* 100 a e) (+ b f)))
(assert (<= (/ 1 c (/ 3 d)) (/ e b)))
(assert (= (- c) (* 49 (+ 92 d))))
(assert (< (- 196 c d f) 3))
(assert (>= (+ b e) 0))
(check-sat)
