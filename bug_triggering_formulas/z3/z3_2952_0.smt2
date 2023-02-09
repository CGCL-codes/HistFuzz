(declare-fun a () String)
(declare-fun b () String)
(assert (distinct (str.replace (str.replace "A" b a) "B" "A") (str.replace "A" b (str.replace a "B" "A"))))
(check-sat)
