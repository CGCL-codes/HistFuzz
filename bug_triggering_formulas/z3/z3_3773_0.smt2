(declare-fun a () String)
(assert (distinct (str.++ a "ab") (str.++ "ab" a)))
(check-sat)
