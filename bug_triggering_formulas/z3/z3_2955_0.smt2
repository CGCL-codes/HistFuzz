(declare-fun a (Int) Int)
(declare-fun b (Int) Int)
(declare-fun c () Int)
(declare-fun d () Int)
(declare-fun i () Int)
(declare-fun g () Int)
(declare-fun h () Int)
(declare-fun f () Int)
(declare-fun e () Int)
(assert (let ((a!1 (and (or (and (distinct h g) (= h i) (= g i)) (< 0 c)) (< d 1) (< e 6) (< 6 f)))(a!2 (b (ite (< (+ c d) 1) 0 c)))) (and (or a!1 (< f 1) (<= 0 h)) (< h 10) (< 10 g) (< i (a a!2)))))
(check-sat)
