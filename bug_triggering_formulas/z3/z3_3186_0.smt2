(declare-fun a () Real)
(assert (forall ((b Real) (c Real)) (or (and (>= (+ (/ 2 c) b (* 3 a)) (- 50)) (not (= (+ (* (- 100) c) (/ 5 a)) 0)) (not (= (- (- b) (* 100 a)) 5))) (and (<= (+ (- (* (- 100) c) (* 50 b)) (* (- 100) a)) 8) (= (+ (* (- 20 c) (* 10 b)) (/ 80 a)) 4) (not (= (+ (- b) (/ 3 a)) 0))))))
(check-sat)
