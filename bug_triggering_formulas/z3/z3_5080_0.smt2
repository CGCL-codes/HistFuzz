(declare-fun a () Int)
(declare-fun b () Int)
(assert (let ((?c (< (+ (+ (* b a))) 0))) (= 1 (- (ite (and ?c) 1073741823 0) (ite ?c 1 0)))))
(check-sat)
