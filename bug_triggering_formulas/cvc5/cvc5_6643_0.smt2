(declare-fun y () String)
(declare-fun z () String)
(assert (not (= (str.contains y (str.replace "A" "" z)) (str.contains y "A"))))
(check-sat)
