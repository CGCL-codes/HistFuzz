(declare-fun a ((Array Int (Array Int Int)) (Array Int (Array Int Int))) (Array Int (Array Int Int)))
(assert (forall ((b Int) (c Int) (d (Array Int (Array Int Int))) (e (Array Int (Array Int Int)))) (let ((f (a d e))) (= 0 (select (f c) b)))))
(check-sat)
