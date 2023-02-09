(declare-const a Int)
(assert (>= (mod (div 531 (* 81 81 a a a)) a) (* (- a) a a a)))
(assert (< (* a a (- 81 (* 81 a a a a))) 0))
(check-sat)
