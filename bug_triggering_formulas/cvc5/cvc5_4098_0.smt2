(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun g () Int)
(declare-fun c () Int)
(declare-fun f () Int)
(declare-fun d () Int)
(declare-fun h () Int)
(declare-fun i () Int)
(assert (let ((e 0)) (and (>= (- a) 72 b 4) (xor (not (>= 0 2)) (not (>= (- h) (/ 7 a) (- c d)))) (or (>= f 2)) (or (>= 5 (- i g) 2)))))
(check-sat)
