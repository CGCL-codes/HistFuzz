(declare-fun x () String)
(declare-fun y () String)
(assert (or (= (str.replace (str.replace x y x) x y) x)))
(check-sat)
