(declare-fun a () String)
(assert (= (str.indexof (str.++ "x" a) "y" 0) (str.indexof (str.++ a "x") "y" 2)))
(check-sat)
