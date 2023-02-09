(declare-fun x () String)
(assert (not (= (str.replace (str.++ "B" x) x "B") (str.++ "B" "B"))))
(check-sat)
