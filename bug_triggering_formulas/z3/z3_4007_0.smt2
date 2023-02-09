(declare-fun a () String)
(assert (distinct (distinct a "A") (str.suffixof "A" (str.replace "A" a "B"))))
(check-sat)
