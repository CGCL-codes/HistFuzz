(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun g () Real)
(assert (not (exists ((e Real)) (forall ((f Real)) (=> (xor (=> (= f 0) (= a 0)) (>= (+ (* (/ (- 1) b) e e) g) d) (<= (/ (- 1) b e a) c)) (> b 0) (>= (div (to_int a) (to_int a)) (- b)))))))
(check-sat)
(assert (not (exists ((e Real)) (forall ((f Real)) (=> (xor (=> (= f 0) (= a 0)) (>= (+ (* (/ (- 1) b) e e) g) d) (<= (/ (- 1) b e a) c)) (> b 0) (>= (div (to_int a) (to_int a)) (- b)))))))
(check-sat)
