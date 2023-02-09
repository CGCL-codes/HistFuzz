(declare-fun a () Real)
(assert (or (= a (- 2.0)) (= 1.0 (/ 1.0 a) 0.0)))
(push)
(check-sat)
