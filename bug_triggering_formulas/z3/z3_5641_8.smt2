(declare-sort A)

(declare-sort B)

(declare-sort C)

(declare-fun e2 () (Array A K))
(declare-fun s2 () (Array A J))
(assert (forall ((x A)) (exists ((e1 (Array A K))) (forall ((s1 (Array A J))) (forall ((y A)) (not (= (ite (not (= (= y (g3 (e1 x))) (=> (= s2 (store s1 y (c_J (f1 (s1 y)) (f2 (s1 y)) (f3 (s1 y)) (f4 (s1 y)) (f5 (s1 y)) (f6 (s1 y)) (f7 (s1 y))))) (forall ((s A)) (= s (g3 (select e2 s))))))) Truth Falsity) Truth)))))))
(check-sat)
