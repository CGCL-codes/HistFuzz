(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(declare-fun g () Real)
(declare-fun h () Real)
(assert (forall ((i Real)) (> (/ 5 (- (+ b 1) i) (+ d e)) (+ c a i))))
(assert (< g (+ d h)))
(assert (< 0 g))
(assert (= d (+ 2 h e)))
(assert (= a (+ 2 f)))
(check-sat)
