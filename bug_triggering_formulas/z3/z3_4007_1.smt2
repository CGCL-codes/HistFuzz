(declare-fun a () String)
(assert (= (= a "A") (str.suffixof "A" (str.replace "A" a "B"))))
(check-sat)
