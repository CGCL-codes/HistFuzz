(declare-fun x () String)
(declare-fun y () Int)
(assert (distinct (str.substr x 1 (str.indexof "B" x y)) ""))
(check-sat)
