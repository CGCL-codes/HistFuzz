(declare-fun arr0 () (Array Bool Bool))
(declare-fun arr1 () (Array (Array Bool Bool) Int))
(assert (forall ((q344 Int) (q346 Bool)) (= (> q344 0) (or q346 (< 1 (abs (select (store arr1 arr0 1) (store arr0 false false))))))))
(check-sat)
