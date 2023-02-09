(declare-sort a)

(declare-sort b)

(declare-sort c)

(declare-fun d (a Real) Real)
(declare-fun e () a)
(declare-fun f (b c) Real)
(declare-fun g () b)
(declare-fun h () a)
(assert (forall ((i Real) (j c)) (= 0 (d e (+ i (/ (* (f g j)) 1.0))))))
(assert (< (d e 0) 1.0))
(assert (forall ((i Real)) (= (d h (* 2.0 i)) (* i))))
(assert (forall ((i Real)) (= 0 (/ (d h i)))))
(check-sat)
