(declare-fun b ((Array Int (Array Int Real)) Int) Bool)
(declare-fun c () Int)
(declare-fun d () Real)
(declare-fun e () (Array Int (Array Int Real)))
(declare-fun f () (Array Int (Array Int Real)))
(declare-fun g () (Array Int (Array Int Real)))
(declare-fun h () (Array Int (Array Int Real)))
(declare-fun k () (Array Int (Array Int Real)))
(assert (forall ((a (Array Int (Array Int Real)))) (distinct (b a c) (exists ((i Int) (j Int)) (or true (> c (select (a j) i)))))))
(assert (b e c))
(assert (= f (store e 0 (store (select e 44) 3 d))))
(assert (= g (store f 8 (store (select f (- 1)) 0 1))))
(assert (distinct h (store g 9 (store (select g 0) 8 2)) k))
(check-sat)
