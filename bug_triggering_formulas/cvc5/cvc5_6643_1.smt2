(declare-fun x () String)
(declare-fun y () String)
(assert (distinct (str.replace "A" (str.replace x "A" (str.++ z u "A" z)) x) (str.replace "A" x (str.replace x (str.++ u y) x))))
(check-sat)
