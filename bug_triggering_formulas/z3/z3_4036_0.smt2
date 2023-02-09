(declare-fun t () String)
(assert (= (str.indexof (str.++ "aa" t) t 3) (str.indexof (str.++ "aa" t) t 1)))
(check-sat)
