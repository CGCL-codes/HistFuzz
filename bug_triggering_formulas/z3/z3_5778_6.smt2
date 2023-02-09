(declare-fun a1 () (Array Int Int))
(declare-fun a2 ((Array Int Int) (Array Int Int)) Int)
(assert (let ((v0 a1)(v1 (store (store a1 0 0) 1 0))) (distinct (v0 (a2 a1 v1)) (v1 (a2 a1 a1)))))
(check-sat)
