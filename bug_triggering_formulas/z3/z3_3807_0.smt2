(declare-fun f ((Array Int (Array Int Real)) Int) Bool)
(declare-fun n () Int)
(declare-fun a0 () (Array Int (Array Int Real)))
(declare-fun e0 () Real)
(declare-fun a1 () (Array Int (Array Int Real)))
(declare-fun a2 () (Array Int (Array Int Real)))
(declare-fun e2 () Real)
(declare-fun a3 () (Array Int (Array Int Real)))
(declare-fun e3 () Real)
(declare-fun a4 () (Array Int (Array Int Real)))
(declare-fun e4 () Real)
(declare-fun a5 () (Array Int (Array Int Real)))
(declare-fun e5 () Real)
(declare-fun a6 () (Array Int (Array Int Real)))
(declare-fun e6 () Real)
(declare-fun a7 () (Array Int (Array Int Real)))
(assert (forall ((a (Array Int (Array Int Real))) (n Int)) (= (f a n) (forall ((i Int) (j Int)) (=> (and (<= 1 i n) (<= 1 j n)) (= 0 (select (a j) i)))))))
(assert (f a0 n))
(assert (= a1 (store a0 0 (store (select a0 0) 0 e0)) a2 (store a1 1 (store (select a2 2) 2 e2)) a4 (store a3 3 (store (select a3 3) 10 e3)) (store a4 4 (store (select a4 4) 4 e4))))
(assert (= a6 (store a5 5 (store (select a5 5) 5 e5)) a7 (store a6 175 (store (select a6 6) 6 e6))))
(assert (not (f a7 n)))
(check-sat)
