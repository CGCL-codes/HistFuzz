(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(assert (let ((?d c)) (and (<= (+ a (* 6 b)) (/ 8 101)) (<= (* ?d a) (- 4 (* 6 a)) 0))))
(check-sat)
