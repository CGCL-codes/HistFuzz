(declare-fun a () Real)
(declare-fun b () Real)
(assert (> (/ b b b (- a b) (- 4 b) (+ a b) (* a) b (/ 0 b) (- b) 0 (div 0 b)) 0))
(check-sat)
