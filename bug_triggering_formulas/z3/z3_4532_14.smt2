(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(declare-fun g () Real)
(declare-fun h () Real)
(declare-fun i () Real)
(declare-fun j () Real)
(declare-fun k () Real)
(declare-fun l () Real)
(declare-fun m () Real)
(declare-fun n () Real)
(declare-fun o () Real)
(declare-fun p () Real)
(declare-fun q () Real)
(declare-fun r () Real)
(declare-fun s () Real)
(declare-fun t () Real)
(assert (not (exists ((u Real)) (=> (and (=> (<= 0 u (/ (- (* (- 125.2833904241) e)) 557.1884422118)) (and (>= (+ (* l u) r) 0) (<= (+ (* l u) r) p) (<= u t))) (<= r p) (> j (+ k (/ (* r r) (* 2 (/ a i))))) (> (/ a i) 0) (>= l 0) (> p 0) (> t 0)) (<= (+ (* l (/ (- (- 125.2833904241 e)) 557.1884422118)) r) p)))))
(assert (= a (* i a m) (/ a i)))
(assert (= b (+ (* 125.2833904241 e) (* 557.1884422118 o)) f (/ c t) (/ c f) (* n l)))
(assert (= (/ b l) (+ (* g s) p h d q)))
(check-sat)
