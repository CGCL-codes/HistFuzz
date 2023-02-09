(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.at a (str.indexof "B" b 1)) (str.at b 5)))
(check-sat)
