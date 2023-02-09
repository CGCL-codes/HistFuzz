(declare-fun z () (Tuple Int Int Int Int Int Int))
(declare-fun f () (Tuple Int Int Int))
(assert (= f ((_ tuple_project 0 1 2) z f f f f f f f f 0 0 0 0 0)))
(check-sat)
