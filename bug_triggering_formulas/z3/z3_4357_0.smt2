(declare-fun x () String)
(declare-fun y () String)
(assert (distinct (str.replace (str.replace x y x) x y) x))
(check-sat)
