(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun aa () Int)
(assert (= (> (- (- (ite (< (- (+ b a)) 632) (- (* 6 b)) 0) aa)) 6) (>= c 1)))
(assert (<= c aa 2))
(assert (<= 0 aa))
(assert (> 6 (* (- (- (ite (< (- (+ b a)) 632) (- b) 0))) a)))
(assert (< b 16))
(assert (>= b 0))
(check-sat)
