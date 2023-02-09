(declare-fun x () String)
(declare-fun y () String)
(assert (= (str.replace (str.replace x "B" (str.++ "B" "B")) "B" (str.++ y "B")) (str.++ y "B")))
(check-sat)
