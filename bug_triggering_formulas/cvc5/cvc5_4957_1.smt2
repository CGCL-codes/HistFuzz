(declare-fun a () (Array Int Int))
(assert (distinct (select a 0) (select (ite false a a) 0)))
(check-sat)
