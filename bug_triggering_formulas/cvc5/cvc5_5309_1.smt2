(declare-const i7 Int)
(declare-fun st10 () (Set Int))
(assert (exists ((x Int)) (= st10 (singleton x))))
(assert (member (- i7) st10))
(check-sat)
