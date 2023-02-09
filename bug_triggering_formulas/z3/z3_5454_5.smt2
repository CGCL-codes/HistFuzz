(declare-sort U)

(declare-fun ffk () U)
(declare-fun c (U U) U)
(declare-fun ff () U)
(declare-fun app (U Int) Int)
(assert (and (forall ((f U) (g U)) (not (forall ((x Int)) (not (= (app f x) (app g x)))))) (forall ((x Int)) (= (* x) (app ff x))) (forall ((x Int)) (= (app ffk x) x)) (forall ((f U) (g U) (x Int)) (not (= (app g x) (app (c f g) x))))))
(check-sat)
