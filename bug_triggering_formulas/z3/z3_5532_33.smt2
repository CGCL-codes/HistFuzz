(declare-fun a () Real)
(declare-fun b () Real)
(assert (=> (and (> (* (- (* a a)) (- b (* a a))) (+ a (* (* a a) b)) (* (- (* a a)) (- b (* a a)))) (= b (+ (- (* (- (+ a (* a (* (ite (< 1 b) b b) a))) (+ a (* a (* (ite (< 1 b) b b) a)))) (+ a (* a (- (+ a (* a a))))) b (- (+ a (* a (* (ite (< 1 b) b b) a))) (+ a (* a (* (ite (< 1 b) b b) a)))))) (* a (* (+ a (* a (/ a b))) (* a a)) (* a a))))) (and (> (+ a (* (* a a) b)) (* (- (* a a)) (- b (* a a))) (+ a (* (* a a) b))) (= b (+ (- (* (- (+ a (* a (* (ite (< 1 b) b b) a))) (+ a (* a (* (ite (< 1 b) b b) a)))) (+ a (* a (- (+ a (* a a))))) b (- (+ a (* a (* (ite (< 1 b) b b) a))) (+ a (* a (* (ite (< 1 b) b b) a))))) (* (+ a (* a (/ a b))) (* a a)) (* a a))))) (and (> (+ a (* (* a)) 0) (+ a (* (* a a) b))))))
(check-sat)
