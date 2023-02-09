(declare-fun s3 () (Array Int Int Int))
(declare-fun foo (Int Int) Int)
(assert (exists ((s1 (Array Int Int Int))) (and (= 0 (select s3 0 0)) (= s3 ((_ map foo) s1 s3)) (forall ((x Int) (y Int)) (= 1 (foo x y))))))
(check-sat)
