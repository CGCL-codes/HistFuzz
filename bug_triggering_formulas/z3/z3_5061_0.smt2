(declare-fun x () String)
(declare-fun y () String)
(assert (not (= (str.prefixof (str.++ "A" "A") x) (str.prefixof "A" (str.replace (str.replace x "A" "") "A" "")))))
(check-sat)
