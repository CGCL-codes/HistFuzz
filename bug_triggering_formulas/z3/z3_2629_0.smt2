(declare-fun c () Real)
(assert (forall ((a Real)) (and (exists ((g Real)) (exists ((b Real)) (forall ((e Real)) (and (>= (/ (/ (/ 0 (- g)) (* 20 a)) c) 20) (= (/ (* 54 g) (- a)) (* 4 1)))))) (forall ((f Real)) (forall ((g Real)) (forall ((b Real)) (forall ((e Real)) (and (not (= 0 (- 1 22))) (<= (- (/ (* (+ (- e) (- 7 b)) (/ 0 g)) (/ 6 f)) (+ 4 f)) 6) (exists ((k Real)) (> (/ (/ (* (* (+ b (- 4 e)) (/ 0 g)) (* 18 f)) (/ 5 a)) 0) 7)) (exists ((k Real)) (and (>= (* (- (* 8 a)) (* 18 c)) 0) (= c (- 1)) (= (/ (* (+ (* (* (- 3 e) b) (/ 0 g)) (* 20 f)) (* (/ 0 0) a)) 0) 0)))))))))))
(check-sat)
