(declare-sort T 0)

(declare-fun b (Int T) T)
(declare-fun c (T) Int)
(declare-fun e (Int T) T)
(assert (forall ((d Int) (g T)) (= (c (b d g)) (/ 1 (c g)))))
(assert (forall ((f Int) (g T)) (=> (<= f 0) (= (e f g) (e 0 (b 1 g))))))
(assert (forall ((f Int)) (and (<= f 0) (exists ((g T)) (distinct (e f (b 1 g)) (b 1 (e f g)))) (forall ((g T)) (distinct (e 0 (b 1 g)) (b 1 (e (+ f 1) g)))))))
(check-sat)
