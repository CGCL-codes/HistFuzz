(declare-fun a () Real)
(declare-fun b () Real)
(assert (< b 0 a))
(assert (<= (* (+ a b) a) (- b)))
(assert (<= (+ (* a a) (* b b)) 1))
(assert (>= (* (+ a b) a) (- b)))
(assert (>= (+ (* a a) (* b b)) 1))
(check-sat)
