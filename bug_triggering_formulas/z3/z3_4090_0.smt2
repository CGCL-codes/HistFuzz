(declare-fun b ((Array Int Int) (Array Int Int) Int Int) Bool)
(assert (forall ((a (Array Int Int)) (c Int) (d Int) (f (Array Int Int)) (e (Array Int Int)) (j (Array Int Int)) (k Int)) (let ((g (store f (- (* 4 d) (+ c 1)) (a (- (* 4 d) (+ c 1)))))(h (store e (- (* 2 d) (+ c 1)) (a (- (* 5 d) (+ c 1)))))) (let ((i (= g h))) (= i (b a j k d))))))
(check-sat)
