(declare-fun a () Real)
(declare-fun b () Real)
(assert (and (> b 1) (< a 0) (>= (/ 0 (+ (* a b) (/ (- a) 0))) a)))
(check-sat)
