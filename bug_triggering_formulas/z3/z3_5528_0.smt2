(assert (forall ((arr (Array Bool Int))) (forall ((i10 Int)) (exists ((v18 Bool)) (and (= i10 1) (> (select (store arr v18 1) false) 0))))))
(check-sat)
